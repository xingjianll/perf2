  40: f2023000             mov      $r0h, thread_in_threadgroup_x
  44: 8e04031008000000     iadd     $r1l, 3, $r0h
  4c: fe0081f08300         and      $r0l, $r0h, 63
  52: fe04c2f08300         and      $r1l, ^r1l, 63
  58: 0e0004010c001000     iadd     r0l, u2l, ^r0l, lsl 2
  60: 0e0604210c001000     iadd     r1h, u2l, ^r1l, lsl 2
  68: 8e04061008000000     iadd     $r1l, 6, $r0h
  70: 8e0209100c000000     iadd     $r0h, 9, ^r0h
  78: fe04c2f08300         and      $r1l, ^r1l, 63
  7e: fe02c1f08300         and      $r0h, ^r0h, 63
  84: 0e0404210c001000     iadd     r1l, u2l, ^r1l, lsl 2
  8c: 0e0804110c001000     iadd     r2l, u2l, ^r0h, lsl 2
Unexpected set bits: [40, 47]
  94: 690100021481         lload    r0, r0l, 0, i32, x
Unexpected set bits: [40, 47]
  9a: 690d03021481         lload    r3, r1h, 0, i32, x
Unexpected set bits: [40, 47]
  a0: 690502021481         lload    r1, r1l, 0, i32, x
Unexpected set bits: [40, 47]
  a6: 690904021481         lload    r2, r2l, 0, i32, x
  ac: aa81c6022c00         fadd     $r0, ^r3, ^r0
  b2: aa81c0222c00         fadd     $r0, ^r0, ^r1
  b8: 72053000             mov      r1, thread_in_threadgroup_x
  bc: 2a81c0422c00         fadd     r0, ^r0, ^r2
  c2: 4501200c00c01200     store    r0, du0, r1.sx, i32, x, a
  ca: 8800                 stop
