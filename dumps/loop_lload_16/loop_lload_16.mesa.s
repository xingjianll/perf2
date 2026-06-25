Unexpected set bits: [40, 47]
  40: 69314402f481         lload    r12_r13_r14_r15, u2l, 0, i32, xyzw
Unexpected set bits: [42, 47]
  46: 69214412f484         lload    r8_r9_r10_r11, u2l, 1, i32, xyzw
Unexpected set bits: [42, 47]
  4c: 69114422f484         lload    r4_r5_r6_r7, u2l, 2, i32, xyzw
Unexpected set bits: [42, 47]
  52: 69014432f484         lload    r0_r1_r2_r3, u2l, 3, i32, xyzw
  58: aab1da822d00         fadd     $r12, ^r13, ^r12
  5e: aab1d8c22d00         fadd     $r12, ^r12, ^r14
  64: aab1d8e22d00         fadd     $r12, ^r12, ^r15
  6a: aaa1d8022d00         fadd     $r8, ^r12, ^r8
  70: aaa1d0222d00         fadd     $r8, ^r8, ^r9
  76: aaa1d0422d00         fadd     $r8, ^r8, ^r10
  7c: aaa1d0622d00         fadd     $r8, ^r8, ^r11
  82: aa91d0822c00         fadd     $r4, ^r8, ^r4
  88: aa91c8a22c00         fadd     $r4, ^r4, ^r5
  8e: aa91c8c22c00         fadd     $r4, ^r4, ^r6
  94: aa91c8e22c00         fadd     $r4, ^r4, ^r7
  9a: aa81c8022c00         fadd     $r0, ^r4, ^r0
  a0: aa81c0222c00         fadd     $r0, ^r0, ^r1
  a6: aa81c0422c00         fadd     $r0, ^r0, ^r2
  ac: 2a81c0622c00         fadd     r0, ^r0, ^r3
  b2: 4501000d00c01200     store    r0, du0, 0, i32, x, a
  ba: 8800                 stop
