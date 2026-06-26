device: Apple M1 Ultra (G13D C0)
shader: MESA_SHADER_COMPUTE
workgroup_size: 32, 1, 1
shared_size: 64
   0: 6981800214000000       lload    r0, 0, i32, x
   8: 69854c0214000000       lload    r1, u6l, 0, i32, x
  10: aa81c0222c00           fadd     $r0, ^r0, ^r1
  16: 69854d0214000000       lload    r1, u6h, 0, i32, x
  1e: aa81c0222c00           fadd     $r0, ^r0, ^r1
  24: 69854e0214000000       lload    r1, u7l, 0, i32, x
  2c: aa81c0222c00           fadd     $r0, ^r0, ^r1
  32: 69854f0214000000       lload    r1, u7h, 0, i32, x
  3a: aa81c0222c00           fadd     $r0, ^r0, ^r1
  40: 6985500214000000       lload    r1, u8l, 0, i32, x
  48: aa81c0222c00           fadd     $r0, ^r0, ^r1
  4e: 6985510214000000       lload    r1, u8h, 0, i32, x
  56: aa81c0222c00           fadd     $r0, ^r0, ^r1
  5c: 6985520214000000       lload    r1, u9l, 0, i32, x
  64: aa81c0222c00           fadd     $r0, ^r0, ^r1
  6a: 6985530214000000       lload    r1, u9h, 0, i32, x
  72: aa81c0222c00           fadd     $r0, ^r0, ^r1
  78: 6985540214000000       lload    r1, u10l, 0, i32, x
  80: aa81c0222c00           fadd     $r0, ^r0, ^r1
  86: 6985550214000000       lload    r1, u10h, 0, i32, x
  8e: aa81c0222c00           fadd     $r0, ^r0, ^r1
  94: 6985560214000000       lload    r1, u11l, 0, i32, x
  9c: aa81c0222c00           fadd     $r0, ^r0, ^r1
  a2: 6985570214000000       lload    r1, u11h, 0, i32, x
  aa: aa81c0222c00           fadd     $r0, ^r0, ^r1
  b0: 6985580214000000       lload    r1, u12l, 0, i32, x
  b8: aa81c0222c00           fadd     $r0, ^r0, ^r1
  be: 6985590214000000       lload    r1, u12h, 0, i32, x
  c6: aa81c0222c00           fadd     $r0, ^r0, ^r1
  cc: 69855a0214000000       lload    r1, u13l, 0, i32, x
  d4: 2a81c0222c00           fadd     r0, ^r0, ^r1
  da: 4501080d00c01200       store    r0, du4, 0, i32, x, a
  e2: 8800                   stop
   0: 0501040d00c0f200       load     r0_r1_r2_r3, du2, 0, i32, xyzw, a
   8: 3800                   wait     a
   a: c500803d0080f000       mov      du4, dr0
  12: 8800                   stop
