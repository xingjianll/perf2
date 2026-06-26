Unexpected set bits: [40, 47]
  40: 69014402f481         lload    r0_r1_r2_r3, u2l, 0, i32, xyzw
  46: aa81c2022c00         fadd     $r0, ^r1, ^r0
  4c: aa81c0422c00         fadd     $r0, ^r0, ^r2
  52: 2a81c0622c00         fadd     r0, ^r0, ^r3
  58: 4501000d00c01200     store    r0, du0, 0, i32, x, a
  60: 8800                 stop
