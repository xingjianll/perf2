   0: 4800c200             pixwait  512, 3
   4: 48080000             pixwait  8, 0
   8: 49000004f8fc8003     ld_tile  r0l_r0h_r1l_r1h, r0l_r0h, 255, 0, u8norm, xyzw
Unexpected set bits: [46]
  10: 2680c0000340         hadd     r0l, ^r0l, 1.0
  16: 2682c1000300         hadd     r0h, ^r0h, 1.0
  1c: 2684c2000300         hadd     r1l, ^r1l, 1.0
  22: 2686c3000300         hadd     r1h, ^r1h, 1.0
  28: 48040000             pixwait  4, 0
  2c: 09000004f0fc8003     st_tile  r0l_r0h_r1l_r1h, r0l_r0h, 255, 0, u8norm, xyzw
  34: 8800                 stop
