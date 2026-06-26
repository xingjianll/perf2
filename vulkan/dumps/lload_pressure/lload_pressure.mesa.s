device: Apple M1 Ultra (G13D C0)
shader: MESA_SHADER_COMPUTE
workgroup_size: 32, 1, 1
shared_size: 16384
   0: f2013000               mov      $r0, thread_in_threadgroup_x
   4: fe0580c29800           and      $r1, $r0, u6
   a: 8e09030068000000       iadd     $r2, 3, $r0.sx
  12: 8e0d060068000000       iadd     $r3, 6, $r0.sx
  1a: 0e0500206c001000       iadd     r1, 0, ^r1.sx, lsl 2
  22: fe09c4c29800           and      $r2, ^r2, u6
  28: fe0dc6c29800           and      $r3, ^r3, u6
  2e: 8e11090068000000       iadd     $r4, 9, $r0.sx
  36: 0e0900406c001000       iadd     r2, 0, ^r2.sx, lsl 2
  3e: 0e0d00606c001000       iadd     r3, 0, ^r3.sx, lsl 2
  46: fe11c8c29800           and      $r4, ^r4, u6
  4c: 8e150c0068000000       iadd     $r5, 12, $r0.sx
  54: 8e190f0068000000       iadd     $r6, 15, $r0.sx
  5c: 0e1100806c001000       iadd     r4, 0, ^r4.sx, lsl 2
  64: fe15cac29800           and      $r5, ^r5, u6
  6a: fe19ccc29800           and      $r6, ^r6, u6
  70: 8e1d120068000000       iadd     $r7, 18, $r0.sx
  78: 0e1500a06c001000       iadd     r5, 0, ^r5.sx, lsl 2
  80: 0e1900c06c001000       iadd     r6, 0, ^r6.sx, lsl 2
  88: fe1dcec29800           and      $r7, ^r7, u6
  8e: 8e21150068000000       iadd     $r8, 21, $r0.sx
  96: 8e25180068000000       iadd     $r9, 24, $r0.sx
  9e: 0e1d00e06c001000       iadd     r7, 0, ^r7.sx, lsl 2
  a6: fe21d0c29800           and      $r8, ^r8, u6
  ac: fe25d2c29800           and      $r9, ^r9, u6
  b2: 8e291b0068000000       iadd     $r10, 27, $r0.sx
  ba: 0e2100006d001000       iadd     r8, 0, ^r8.sx, lsl 2
  c2: 0e2500206d001000       iadd     r9, 0, ^r9.sx, lsl 2
  ca: fe29d4c29800           and      $r10, ^r10, u6
  d0: 8e2d1e0068000000       iadd     $r11, 30, $r0.sx
  d8: 8e31210068000000       iadd     $r12, 33, $r0.sx
  e0: 0e2900406d001000       iadd     r10, 0, ^r10.sx, lsl 2
  e8: fe2dd6c29800           and      $r11, ^r11, u6
  ee: fe31d8c29800           and      $r12, ^r12, u6
  f4: 8e35240068000000       iadd     $r13, 36, $r0.sx
  fc: 0e2d00606d001000       iadd     r11, 0, ^r11.sx, lsl 2
 104: 0e3100806d001000       iadd     r12, 0, ^r12.sx, lsl 2
 10c: fe35dac29800           and      $r13, ^r13, u6
 112: 8e39270068000000       iadd     $r14, 39, $r0.sx
 11a: 8e3d2a0068000000       iadd     $r15, 42, $r0.sx
 122: 0e3500a06d001000       iadd     r13, 0, ^r13.sx, lsl 2
 12a: fe39dcc29800           and      $r14, ^r14, u6
 130: fe3ddec29800           and      $r15, ^r15, u6
 136: 8e412d0068000000       iadd     $r16, 45, $r0.sx
 13e: 0e3900c06d001000       iadd     r14, 0, ^r14.sx, lsl 2
 146: 0e3d00e06d001000       iadd     r15, 0, ^r15.sx, lsl 2
 14e: fe41e0c29800           and      $r16, ^r16, u6
 154: 8e45300068000000       iadd     $r17, 48, $r0.sx
 15c: 8e49330068000000       iadd     $r18, 51, $r0.sx
 164: 0e4100006e001000       iadd     r16, 0, ^r16.sx, lsl 2
 16c: fe45e2c29800           and      $r17, ^r17, u6
 172: fe49e4c29800           and      $r18, ^r18, u6
 178: 8e4d360068000000       iadd     $r19, 54, $r0.sx
 180: 0e4500206e001000       iadd     r17, 0, ^r17.sx, lsl 2
 188: 0e4900406e001000       iadd     r18, 0, ^r18.sx, lsl 2
 190: fe4de6c29800           and      $r19, ^r19, u6
 196: 8e51390068000000       iadd     $r20, 57, $r0.sx
 19e: 8e553c0068000000       iadd     $r21, 60, $r0.sx
 1a6: 0e4d00606e001000       iadd     r19, 0, ^r19.sx, lsl 2
 1ae: fe51e8c29800           and      $r20, ^r20, u6
 1b4: fe55eac29800           and      $r21, ^r21, u6
 1ba: 8e593f0068000000       iadd     $r22, 63, $r0.sx
 1c2: 0e5100806e001000       iadd     r20, 0, ^r20.sx, lsl 2
 1ca: 0e5500a06e001000       iadd     r21, 0, ^r21.sx, lsl 2
 1d2: fe59ecc29800           and      $r22, ^r22, u6
 1d8: 8e5d020068040000       iadd     $r23, 66, $r0.sx
 1e0: 8e61050068040000       iadd     $r24, 69, $r0.sx
 1e8: 0e5900c06e001000       iadd     r22, 0, ^r22.sx, lsl 2
 1f0: fe5deec29800           and      $r23, ^r23, u6
 1f6: fe61f0c29800           and      $r24, ^r24, u6
 1fc: 8e65080068040000       iadd     $r25, 72, $r0.sx
 204: 0e5d00e06e001000       iadd     r23, 0, ^r23.sx, lsl 2
 20c: 0e6100006f001000       iadd     r24, 0, ^r24.sx, lsl 2
 214: fe65f2c29800           and      $r25, ^r25, u6
 21a: 8e690b0068040000       iadd     $r26, 75, $r0.sx
 222: 8e6d0e0068040000       iadd     $r27, 78, $r0.sx
 22a: 0e6500206f001000       iadd     r25, 0, ^r25.sx, lsl 2
 232: fe69f4c29800           and      $r26, ^r26, u6
 238: fe6df6c29800           and      $r27, ^r27, u6
 23e: 8e71110068040000       iadd     $r28, 81, $r0.sx
 246: 0e6900406f001000       iadd     r26, 0, ^r26.sx, lsl 2
 24e: 0e6d00606f001000       iadd     r27, 0, ^r27.sx, lsl 2
 256: fe71f8c29800           and      $r28, ^r28, u6
 25c: 8e75140068040000       iadd     $r29, 84, $r0.sx
 264: 8e79170068040000       iadd     $r30, 87, $r0.sx
 26c: 0e7100806f001000       iadd     r28, 0, ^r28.sx, lsl 2
 274: fe75fac29800           and      $r29, ^r29, u6
 27a: fe79fcc29800           and      $r30, ^r30, u6
 280: 8e7d1a0068040000       iadd     $r31, 90, $r0.sx
 288: 0e7500a06f001000       iadd     r29, 0, ^r29.sx, lsl 2
 290: 0e7900c06f001000       iadd     r30, 0, ^r30.sx, lsl 2
 298: fe7dfec29800           and      $r31, ^r31, u6
 29e: 8e011d0068140000       iadd     $r32, 93, $r0.sx
 2a6: 8e05200068140000       iadd     $r33, 96, $r0.sx
 2ae: 0e7d00e06f001000       iadd     r31, 0, ^r31.sx, lsl 2
 2b6: fe01c0c29814           and      $r32, ^r32, u6
 2bc: fe05c2c29814           and      $r33, ^r33, u6
 2c2: 8e09230068140000       iadd     $r34, 99, $r0.sx
 2ca: 0e0100006c111000       iadd     r32, 0, ^r32.sx, lsl 2
 2d2: 0e0500206c111000       iadd     r33, 0, ^r33.sx, lsl 2
 2da: fe09c4c29814           and      $r34, ^r34, u6
 2e0: 8e0d260068140000       iadd     $r35, 102, $r0.sx
 2e8: 8e11290068140000       iadd     $r36, 105, $r0.sx
 2f0: 0e0900406c111000       iadd     r34, 0, ^r34.sx, lsl 2
 2f8: fe0dc6c29814           and      $r35, ^r35, u6
 2fe: fe11c8c29814           and      $r36, ^r36, u6
 304: 8e152c0068140000       iadd     $r37, 108, $r0.sx
 30c: 0e0d00606c111000       iadd     r35, 0, ^r35.sx, lsl 2
 314: 0e1100806c111000       iadd     r36, 0, ^r36.sx, lsl 2
 31c: fe15cac29814           and      $r37, ^r37, u6
 322: 8e192f0068140000       iadd     $r38, 111, $r0.sx
 32a: 8e1d320068140000       iadd     $r39, 114, $r0.sx
 332: 0e1500a06c111000       iadd     r37, 0, ^r37.sx, lsl 2
 33a: fe19ccc29814           and      $r38, ^r38, u6
 340: fe1dcec29814           and      $r39, ^r39, u6
 346: 8e21350068140000       iadd     $r40, 117, $r0.sx
 34e: 0e1900c06c111000       iadd     r38, 0, ^r38.sx, lsl 2
 356: 0e1d00e06c111000       iadd     r39, 0, ^r39.sx, lsl 2
 35e: fe21d0c29814           and      $r40, ^r40, u6
 364: 8e25380068140000       iadd     $r41, 120, $r0.sx
 36c: 8e293b0068140000       iadd     $r42, 123, $r0.sx
 374: 0e2100006d111000       iadd     r40, 0, ^r40.sx, lsl 2
 37c: fe25d2c29814           and      $r41, ^r41, u6
 382: fe29d4c29814           and      $r42, ^r42, u6
 388: 8e2d3e0068140000       iadd     $r43, 126, $r0.sx
 390: 0e2500206d111000       iadd     r41, 0, ^r41.sx, lsl 2
 398: 0e2900406d111000       iadd     r42, 0, ^r42.sx, lsl 2
 3a0: fe2dd6c29814           and      $r43, ^r43, u6
 3a6: 8e31010068180000       iadd     $r44, 129, $r0.sx
 3ae: 8e35040068180000       iadd     $r45, 132, $r0.sx
 3b6: 0e2d00606d111000       iadd     r43, 0, ^r43.sx, lsl 2
 3be: fe31d8c29814           and      $r44, ^r44, u6
 3c4: fe35dac29814           and      $r45, ^r45, u6
 3ca: 8e39070068180000       iadd     $r46, 135, $r0.sx
 3d2: 0e3100806d111000       iadd     r44, 0, ^r44.sx, lsl 2
 3da: 0e3500a06d111000       iadd     r45, 0, ^r45.sx, lsl 2
 3e2: fe39dcc29814           and      $r46, ^r46, u6
 3e8: 8e3d0a0068180000       iadd     $r47, 138, $r0.sx
 3f0: 8e410d0068180000       iadd     $r48, 141, $r0.sx
 3f8: 0e3900c06d111000       iadd     r46, 0, ^r46.sx, lsl 2
 400: fe3ddec29814           and      $r47, ^r47, u6
 406: fe41e0c29814           and      $r48, ^r48, u6
 40c: 8e45100068180000       iadd     $r49, 144, $r0.sx
 414: 0e3d00e06d111000       iadd     r47, 0, ^r47.sx, lsl 2
 41c: 0e4100006e111000       iadd     r48, 0, ^r48.sx, lsl 2
 424: fe45e2c29814           and      $r49, ^r49, u6
 42a: 8e49130068180000       iadd     $r50, 147, $r0.sx
 432: 8e4d160068180000       iadd     $r51, 150, $r0.sx
 43a: 0e4500206e111000       iadd     r49, 0, ^r49.sx, lsl 2
 442: fe49e4c29814           and      $r50, ^r50, u6
 448: fe4de6c29814           and      $r51, ^r51, u6
 44e: 8e51190068180000       iadd     $r52, 153, $r0.sx
 456: 0e4900406e111000       iadd     r50, 0, ^r50.sx, lsl 2
 45e: 0e4d00606e111000       iadd     r51, 0, ^r51.sx, lsl 2
 466: fe51e8c29814           and      $r52, ^r52, u6
 46c: 8e551c0068180000       iadd     $r53, 156, $r0.sx
 474: 8e591f0068180000       iadd     $r54, 159, $r0.sx
 47c: 0e5100806e111000       iadd     r52, 0, ^r52.sx, lsl 2
 484: fe55eac29814           and      $r53, ^r53, u6
 48a: fe59ecc29814           and      $r54, ^r54, u6
 490: 8e5d220068180000       iadd     $r55, 162, $r0.sx
 498: 0e5500a06e111000       iadd     r53, 0, ^r53.sx, lsl 2
 4a0: 0e5900c06e111000       iadd     r54, 0, ^r54.sx, lsl 2
 4a8: fe5deec29814           and      $r55, ^r55, u6
 4ae: 8e61250068180000       iadd     $r56, 165, $r0.sx
 4b6: 8e65280068180000       iadd     $r57, 168, $r0.sx
 4be: 0e5d00e06e111000       iadd     r55, 0, ^r55.sx, lsl 2
 4c6: fe61f0c29814           and      $r56, ^r56, u6
 4cc: fe65f2c29814           and      $r57, ^r57, u6
 4d2: 8e692b0068180000       iadd     $r58, 171, $r0.sx
 4da: 0e6100006f111000       iadd     r56, 0, ^r56.sx, lsl 2
 4e2: 0e6500206f111000       iadd     r57, 0, ^r57.sx, lsl 2
 4ea: fe69f4c29814           and      $r58, ^r58, u6
 4f0: 8e6d2e0068180000       iadd     $r59, 174, $r0.sx
 4f8: 8e71310068180000       iadd     $r60, 177, $r0.sx
 500: 0e6900406f111000       iadd     r58, 0, ^r58.sx, lsl 2
 508: fe6df6c29814           and      $r59, ^r59, u6
 50e: fe71f8c29814           and      $r60, ^r60, u6
 514: 8e75340068180000       iadd     $r61, 180, $r0.sx
 51c: 0e6d00606f111000       iadd     r59, 0, ^r59.sx, lsl 2
 524: 0e7100806f111000       iadd     r60, 0, ^r60.sx, lsl 2
 52c: fe75fac29814           and      $r61, ^r61, u6
 532: 8e79370068180000       iadd     $r62, 183, $r0.sx
 53a: 8e7d3a0068180000       iadd     $r63, 186, $r0.sx
 542: 0e7500a06f111000       iadd     r61, 0, ^r61.sx, lsl 2
 54a: fe79fcc29814           and      $r62, ^r62, u6
 550: fe7dfec29814           and      $r63, ^r63, u6
 556: 8e013d0068280000       iadd     $r64, 189, $r0.sx
 55e: 0e7900c06f111000       iadd     r62, 0, ^r62.sx, lsl 2
 566: 0e7d00e06f111000       iadd     r63, 0, ^r63.sx, lsl 2
 56e: fe01c0c29828           and      $r64, ^r64, u6
 574: 0e0100006c221000       iadd     r64, 0, ^r64.sx, lsl 2
 57c: 6985020214800020       lload    r65, r1l, 0, i32, x
 584: 6985040214800000       lload    r1, r2l, 0, i32, x
 58c: 6989060214800000       lload    r2, r3l, 0, i32, x
 594: 698d080214800000       lload    r3, r4l, 0, i32, x
 59c: 69910a0214800000       lload    r4, r5l, 0, i32, x
 5a4: 69950c0214800000       lload    r5, r6l, 0, i32, x
 5ac: 69990e0214800000       lload    r6, r7l, 0, i32, x
 5b4: 699d100214800000       lload    r7, r8l, 0, i32, x
 5bc: 69a1120214800000       lload    r8, r9l, 0, i32, x
 5c4: 69a5140214800000       lload    r9, r10l, 0, i32, x
 5cc: 69a9160214800000       lload    r10, r11l, 0, i32, x
 5d4: 69ad180214800000       lload    r11, r12l, 0, i32, x
 5dc: 69b11a0214800000       lload    r12, r13l, 0, i32, x
 5e4: 69b51c0214800000       lload    r13, r14l, 0, i32, x
 5ec: 69b91e0214800000       lload    r14, r15l, 0, i32, x
 5f4: 69bd200214800000       lload    r15, r16l, 0, i32, x
 5fc: 69c1220214800000       lload    r16, r17l, 0, i32, x
 604: 69c5240214800000       lload    r17, r18l, 0, i32, x
 60c: 69c9260214800000       lload    r18, r19l, 0, i32, x
 614: 69cd280214800000       lload    r19, r20l, 0, i32, x
 61c: 69d12a0214800000       lload    r20, r21l, 0, i32, x
 624: 69d52c0214800000       lload    r21, r22l, 0, i32, x
 62c: 69d92e0214800000       lload    r22, r23l, 0, i32, x
 634: 69dd300214800000       lload    r23, r24l, 0, i32, x
 63c: 69e1320214800000       lload    r24, r25l, 0, i32, x
 644: 69e5340214800000       lload    r25, r26l, 0, i32, x
 64c: 69e9360214800000       lload    r26, r27l, 0, i32, x
 654: 69ed380214800000       lload    r27, r28l, 0, i32, x
 65c: 69f13a0214800000       lload    r28, r29l, 0, i32, x
 664: 69f53c0214800000       lload    r29, r30l, 0, i32, x
 66c: 69f93e0214800000       lload    r30, r31l, 0, i32, x
 674: 69fd000214800004       lload    r31, r32l, 0, i32, x
 67c: 6981020214800014       lload    r32, r33l, 0, i32, x
 684: 6985040214800014       lload    r33, r34l, 0, i32, x
 68c: 6989060214800014       lload    r34, r35l, 0, i32, x
 694: 698d080214800014       lload    r35, r36l, 0, i32, x
 69c: 69910a0214800014       lload    r36, r37l, 0, i32, x
 6a4: 69950c0214800014       lload    r37, r38l, 0, i32, x
 6ac: 69990e0214800014       lload    r38, r39l, 0, i32, x
 6b4: 699d100214800014       lload    r39, r40l, 0, i32, x
 6bc: 69a1120214800014       lload    r40, r41l, 0, i32, x
 6c4: 69a5140214800014       lload    r41, r42l, 0, i32, x
 6cc: 69a9160214800014       lload    r42, r43l, 0, i32, x
 6d4: 69ad180214800014       lload    r43, r44l, 0, i32, x
 6dc: 69b11a0214800014       lload    r44, r45l, 0, i32, x
 6e4: 69b51c0214800014       lload    r45, r46l, 0, i32, x
 6ec: 69b91e0214800014       lload    r46, r47l, 0, i32, x
 6f4: 69bd200214800014       lload    r47, r48l, 0, i32, x
 6fc: 69c1220214800014       lload    r48, r49l, 0, i32, x
 704: 69c5240214800014       lload    r49, r50l, 0, i32, x
 70c: 69c9260214800014       lload    r50, r51l, 0, i32, x
 714: 69cd280214800014       lload    r51, r52l, 0, i32, x
 71c: 69d12a0214800014       lload    r52, r53l, 0, i32, x
 724: 69d52c0214800014       lload    r53, r54l, 0, i32, x
 72c: 69d92e0214800014       lload    r54, r55l, 0, i32, x
 734: 69dd300214800014       lload    r55, r56l, 0, i32, x
 73c: 69e1320214800014       lload    r56, r57l, 0, i32, x
 744: 69e5340214800014       lload    r57, r58l, 0, i32, x
 74c: 69e9360214800014       lload    r58, r59l, 0, i32, x
 754: 69ed380214800014       lload    r59, r60l, 0, i32, x
 75c: 69f13a0214800014       lload    r60, r61l, 0, i32, x
 764: 69f53c0214800014       lload    r61, r62l, 0, i32, x
 76c: 69f93e0214800014       lload    r62, r63l, 0, i32, x
 774: 69fd000214800018       lload    r63, r64l, 0, i32, x
 77c: ae0100002c060000       shl      $r0, ^r0, 6
 784: 4509080e00c21200       store    r65, du4, r0, i32, x, a
 78c: 0e01801600200000       iadd     r64, $r0.sx, 1
 794: 4509084e08c01200       store    r1, du4, r64, i32, x, b
 79c: 0e05802600000000       iadd     r1, $r0.sx, 2
 7a4: 4511280e00c01200       store    r2, du4, r1, i32, x, a
 7ac: 0e05803600000000       iadd     r1, $r0.sx, 3
 7b4: 4519280e00c01200       store    r3, du4, r1, i32, x, a
 7bc: 0e05804600000000       iadd     r1, $r0.sx, 4
 7c4: 4521280e00c01200       store    r4, du4, r1, i32, x, a
 7cc: 0e05805600000000       iadd     r1, $r0.sx, 5
 7d4: 4529280e00c01200       store    r5, du4, r1, i32, x, a
 7dc: 0e05806600000000       iadd     r1, $r0.sx, 6
 7e4: 4531280e00c01200       store    r6, du4, r1, i32, x, a
 7ec: 0e05807600000000       iadd     r1, $r0.sx, 7
 7f4: 4539280e00c01200       store    r7, du4, r1, i32, x, a
 7fc: 0e05808600000000       iadd     r1, $r0.sx, 8
 804: 4541280e00c01200       store    r8, du4, r1, i32, x, a
 80c: 0e05809600000000       iadd     r1, $r0.sx, 9
 814: 3800                   wait     a
 816: 4549280e00c01200       store    r9, du4, r1, i32, x, a
 81e: 0e0580a600000000       iadd     r1, $r0.sx, 10
 826: 4551280e00c01200       store    r10, du4, r1, i32, x, a
 82e: 0e0580b600000000       iadd     r1, $r0.sx, 11
 836: 4559280e00c01200       store    r11, du4, r1, i32, x, a
 83e: 0e0580c600000000       iadd     r1, $r0.sx, 12
 846: 4561280e00c01200       store    r12, du4, r1, i32, x, a
 84e: 0e0580d600000000       iadd     r1, $r0.sx, 13
 856: 4569280e00c01200       store    r13, du4, r1, i32, x, a
 85e: 0e0580e600done
 866: 4571280e00c01200       store    r14, du4, r1, i32, x, a
 86e: 0e0580f600000000       iadd     r1, $r0.sx, 15
 876: 4579280e00c01200       store    r15, du4, r1, i32, x, a
 87e: 0e05800601000000       iadd     r1, $r0.sx, 16
 886: 4581280e00c01200       store    r16, du4, r1, i32, x, a
 88e: 0e05801601000000       iadd     r1, $r0.sx, 17
 896: 3800                   wait     a
 898: 4589280e00c01200       store    r17, du4, r1, i32, x, a
 8a0: 0e05802601000000       iadd     r1, $r0.sx, 18
 8a8: 4591280e00c01200       store    r18, du4, r1, i32, x, a
 8b0: 0e05803601000000       iadd     r1, $r0.sx, 19
 8b8: 4599280e00c01200       store    r19, du4, r1, i32, x, a
 8c0: 0e05804601000000       iadd     r1, $r0.sx, 20
 8c8: 45a1280e00c01200       store    r20, du4, r1, i32, x, a
 8d0: 0e05805601000000       iadd     r1, $r0.sx, 21
 8d8: 45a9280e00c01200       store    r21, du4, r1, i32, x, a
 8e0: 0e05806601000000       iadd     r1, $r0.sx, 22
 8e8: 45b1280e00c01200       store    r22, du4, r1, i32, x, a
 8f0: 0e05807601000000       iadd     r1, $r0.sx, 23
 8f8: 45b9280e00c01200       store    r23, du4, r1, i32, x, a
 900: 0e05808601000000       iadd     r1, $r0.sx, 24
 908: 45c1280e00c01200       store    r24, du4, r1, i32, x, a
 910: 0e05809601000000       iadd     r1, $r0.sx, 25
 918: 3800                   wait     a
 91a: 45c9280e00c01200       store    r25, du4, r1, i32, x, a
 922: 0e0580a601000000       iadd     r1, $r0.sx, 26
 92a: 45d1280e00c01200       store    r26, du4, r1, i32, x, a
 932: 0e0580b601000000       iadd     r1, $r0.sx, 27
 93a: 45d9280e00c01200       store    r27, du4, r1, i32, x, a
 942: 0e0580c601000000       iadd     r1, $r0.sx, 28
 94a: 45e1280e00c01200       store    r28, du4, r1, i32, x, a
 952: 0e0580d601000000       iadd     r1, $r0.sx, 29
 95a: 45e9280e00c01200       store    r29, du4, r1, i32, x, a
 962: 0e0580e601000000       iadd     r1, $r0.sx, 30
 96a: 45f1280e00c01200       store    r30, du4, r1, i32, x, a
 972: 0e0580f601000000       iadd     r1, $r0.sx, 31
 97a: 45f9280e00c01200       store    r31, du4, r1, i32, x, a
 982: 0e05800602000000       iadd     r1, $r0.sx, 32
 98a: 4501280e00c11200       store    r32, du4, r1, i32, x, a
 992: 0e05801602000000       iadd     r1, $r0.sx, 33
 99a: 3800                   wait     a
 99c: 4509280e00c11200       store    r33, du4, r1, i32, x, a
 9a4: 0e05802602000000       iadd     r1, $r0.sx, 34
 9ac: 4511280e00c11200       store    r34, du4, r1, i32, x, a
 9b4: 0e05803602000000       iadd     r1, $r0.sx, 35
 9bc: 4519280e00c11200       store    r35, du4, r1, i32, x, a
 9c4: 0e05804602000000       iadd     r1, $r0.sx, 36
 9cc: 4521280e00c11200       store    r36, du4, r1, i32, x, a
 9d4: 0e05805602000000       iadd     r1, $r0.sx, 37
 9dc: 4529280e00c11200       store    r37, du4, r1, i32, x, a
 9e4: 0e05806602000000       iadd     r1, $r0.sx, 38
 9ec: 4531280e00c11200       store    r38, du4, r1, i32, x, a
 9f4: 0e05807602000000       iadd     r1, $r0.sx, 39
 9fc: 4539280e00c11200       store    r39, du4, r1, i32, x, a
 a04: 0e05808602000000       iadd     r1, $r0.sx, 40
 a0c: 4541280e00c11200       store    r40, du4, r1, i32, x, a
 a14: 0e05809602000000       iadd     r1, $r0.sx, 41
 a1c: 3800                   wait     a
 a1e: 4549280e00c11200       store    r41, du4, r1, i32, x, a
 a26: 0e0580a602000000       iadd     r1, $r0.sx, 42
 a2e: 4551280e00c11200       store    r42, du4, r1, i32, x, a
 a36: 0e0580b602000000       iadd     r1, $r0.sx, 43
 a3e: 4559280e00c11200       store    r43, du4, r1, i32, x, a
 a46: 0e0580c602000000       iadd     r1, $r0.sx, 44
 a4e: 4561280e00c11200       store    r44, du4, r1, i32, x, a
 a56: 0e0580d602000000       iadd     r1, $r0.sx, 45
 a5e: 4569280e00c11200       store    r45, du4, r1, i32, x, a
 a66: 0e0580e602000000       iadd     r1, $r0.sx, 46
 a6e: 4571280e00c11200       store    r46, du4, r1, i32, x, a
 a76: 0e0580f602000000       iadd     r1, $r0.sx, 47
 a7e: 4579280e00c11200       store    r47, du4, r1, i32, x, a
 a86: 0e05800603000000       iadd     r1, $r0.sx, 48
 a8e: 4581280e00c11200       store    r48, du4, r1, i32, x, a
 a96: 0e05801603000000       iadd     r1, $r0.sx, 49
 a9e: 3800                   wait     a
 aa0: 4589280e00c11200       store    r49, du4, r1, i32, x, a
 aa8: 0e05802603000000       iadd     r1, $r0.sx, 50
 ab0: 4591280e00c11200       store    r50, du4, r1, i32, x, a
 ab8: 0e05803603000000       iadd     r1, $r0.sx, 51
 ac0: 4599280e00c11200       store    r51, du4, r1, i32, x, a
 ac8: 0e05804603000000       iadd     r1, $r0.sx, 52
 ad0: 45a1280e00c11200       store    r52, du4, r1, i32, x, a
 ad8: 0e05805603000000       iadd     r1, $r0.sx, 53
 ae0: 45a9280e00c11200       store    r53, du4, r1, i32, x, a
 ae8: 0e05806603000000       iadd     r1, $r0.sx, 54
 af0: 45b1280e00c11200       store    r54, du4, r1, i32, x, a
 af8: 0e05807603000000       iadd     r1, $r0.sx, 55
 b00: 45b9280e00c11200       store    r55, du4, r1, i32, x, a
 b08: 0e05808603000000       iadd     r1, $r0.sx, 56
 b10: 45c1280e00c11200       store    r56, du4, r1, i32, x, a
 b18: 0e05809603000000       iadd     r1, $r0.sx, 57
 b20: 3800                   wait     a
 b22: 45c9280e00c11200       store    r57, du4, r1, i32, x, a
 b2a: 0e0580a603000000       iadd     r1, $r0.sx, 58
 b32: 45d1280e00c11200       store    r58, du4, r1, i32, x, a
 b3a: 0e0580b603000000       iadd     r1, $r0.sx, 59
 b42: 45d9280e00c11200       store    r59, du4, r1, i32, x, a
 b4a: 0e0580c603000000       iadd     r1, $r0.sx, 60
 b52: 45e1280e00c11200       store    r60, du4, r1, i32, x, a
 b5a: 0e0580d603000000       iadd     r1, $r0.sx, 61
 b62: 45e9280e00c11200       store    r61, du4, r1, i32, x, a
 b6a: 0e0580e603000000       iadd     r1, $r0.sx, 62
 b72: 0e01c0f603000000       iadd     r0, ^r0.sx, 63
 b7a: 45f1280e00c11200       store    r62, du4, r1, i32, x, a
 b82: 45f9080e00c11200       store    r63, du4, r0, i32, x, a
 b8a: 8800                   stop
   0: 0501040d00c0f200       load     r0_r1_r2_r3, du2, 0, i32, xyzw, a
   8: 3800                   wait     a
   a: c500803d0080f000       mov      du4, dr0
  12: 8800                   stop
