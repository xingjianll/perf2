#!/usr/bin/env python3
import os, sys, subprocess, struct, glob

REPO  = os.path.dirname(os.path.abspath(__file__))
DUMPS = os.path.join(REPO, "dumps")

MESA_ISA = os.environ.get("MESA_ISA_DIR", os.path.expanduser("~/.cache/perf-disasm/mesa-sparse/src/asahi/isa"))
LOADER   = os.environ.get("LOADER", os.path.join(REPO, "build", "load_bin"))


def metal_cache_dir():
    base = subprocess.check_output(["getconf", "DARWIN_USER_CACHE_DIR"]).decode().strip()
    candidates = sorted(glob.glob(os.path.join(base, "com.apple.metal", "*")))
    if not candidates:
        sys.exit(f"no Metal cache subdir under {base}com.apple.metal/")
    return max(candidates, key=os.path.getmtime)


def parse_macho_text(data, off):
    magic, *_ = struct.unpack_from("<IIIIIIII", data, off)
    if magic != 0xfeedfacf:
        return None
    _m, _ct, _cs, _ft, ncmds, _sz, *_ = struct.unpack_from("<IIIIIIII", data, off)
    lc = off + 32
    for _ in range(ncmds):
        cmd, cmdsize = struct.unpack_from("<II", data, lc)
        if cmd == 0x19:
            nsects = struct.unpack_from("<I", data, lc + 64)[0]
            sect = lc + 72
            for _s in range(nsects):
                sname = data[sect:sect+16].rstrip(b'\0').decode('ascii', 'replace')
                _saddr, ssize, soffset = struct.unpack_from("<QQI", data, sect + 32)
                if sname == "__text":
                    return data[off + soffset : off + soffset + ssize]
                sect += 80
        lc += cmdsize
    return None


def find_machos(data):
    p = 0
    while True:
        p = data.find(b'\xcf\xfa\xed\xfe', p)
        if p < 0: break
        nxt = data.find(b'\xcf\xfa\xed\xfe', p + 4)
        end = nxt if nxt > 0 else len(data)
        yield p, end - p
        p += 4


def disasm_via_mesa(in_bin, out_asm):
    script = f"""
import sys, binascii, os
sys.path.insert(0, {MESA_ISA!r})
os.chdir({MESA_ISA!r})
from test.disasm import disasm
data = open({in_bin!r}, 'rb').read()
start = 0
while start + 4 <= len(data) and data[start:start+4] == b'\\x00\\x00\\x00\\x00':
    start += 4
i = start
while i < len(data):
    lst = data[i:i+16]
    raw = sum([b << (8*j) for j, b in enumerate(lst)])
    length, asm = disasm(raw)
    length = abs(length) or 2
    print(f'{{hex(i)[2:]:>4}}: {{binascii.hexlify(data[i:i+length]).decode():<20}} {{asm}}')
    i += length
"""
    with open(out_asm, "w") as f:
        subprocess.run([sys.executable, "-c", script], check=True, stdout=f)


def main(metallib, fn_name):
    if not os.path.exists(LOADER):
        sys.exit(f"loader not built: {LOADER}  (make)")
    if not os.path.exists(metallib):
        sys.exit(f"metallib not found: {metallib}  (make)")

    cache = metal_cache_dir()
    data_f = os.path.join(cache, "functions.data")
    list_f = os.path.join(cache, "functions.list")
    print(f"[extract] cache: {cache}")
    for p in (data_f, list_f):
        if os.path.exists(p):
            os.remove(p)

    subprocess.run([LOADER, metallib, fn_name], check=True)

    if not os.path.exists(data_f):
        sys.exit("no functions.data after loader run -- Metal didn't write the cache")
    data = open(data_f, "rb").read()
    blobs = list(find_machos(data))
    print(f"[extract] {len(blobs)} Mach-O blob(s) in functions.data")

    base = os.path.splitext(os.path.basename(metallib))[0]
    out_dir = os.path.join(DUMPS, base)
    os.makedirs(out_dir, exist_ok=True)
    for i, (off, _size) in enumerate(blobs):
        text = parse_macho_text(data, off)
        if text is None:
            print(f"  [{i}] no __text at offset 0x{off:x}")
            continue
        suffix = "" if len(blobs) == 1 else f"_{i}"
        raw = os.path.join(out_dir, f"{base}{suffix}_agx.bin")
        open(raw, "wb").write(text)
        print(f"  [{i}] __text = {len(text)} bytes -> {raw}")
        mesa = os.path.join(out_dir, f"{base}{suffix}.mesa.s")
        disasm_via_mesa(raw, mesa); print(f"        Mesa -> {mesa}")


if __name__ == "__main__":
    if sys.platform != "darwin":
        sys.exit("macOS only")
    if len(sys.argv) < 2:
        sys.exit("usage: extract_agx.py <metallib> [function-name]")
    metallib = sys.argv[1]
    fn_name  = sys.argv[2] if len(sys.argv) >= 3 else "kernel_main"
    main(metallib, fn_name)
