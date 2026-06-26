  40: f2003000             mov      $r0l, thread_in_threadgroup_x
  44: 0e0004010c001000     iadd     r0l, u2l, ^r0l, lsl 2
  4c: 72053000             mov      r1, thread_in_threadgroup_x
Unexpected set bits: [40, 47]
  50: 690100021481         lload    r0, r0l, 0, i32, x
  56: 4501                 <unknown instr>
  58: 2008                 <unknown instr>
  5a: 00c012008800         jmp_any  8912914
