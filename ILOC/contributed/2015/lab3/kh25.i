//NAME: Keliang He
//NETID: kh25
//SIM INPUT:
//OUTPUT: 2 6 20 70 252

// This test block computes the middle term up to the 10th row of Pascal's triangle 
// a.k.a. 1C2, 2C4, 3C6, 4C8, 5C10

// Row 0 and 1
loadI 1 => r0

  // Row 2
  add r0, r0 => r1

  // Output
  loadI 1024 => r26
  store r1 => r26
  output 1024

  // Row 3
  add r0, r1 => r2
  add r1, r0 => r3

  // Row 4
  add r0, r2 => r4
  add r2, r3 => r5
  add r3, r0 => r6

  // Output
  store r5 => r26
  output 1024

  // Row 5
  add r0, r4 => r7
  add r4, r5 => r8
  add r5, r6 => r9
  add r6, r0 => r10

  // Row 6
  add r0, r7 => r11
  add r7, r8 => r12
  add r8, r9 => r13
  add r9, r10 => r14
  add r10, r0 => r15

  // Output
  store r13 => r26
  output 1024

  // Row 7
  add r11, r12 => r16
  add r12, r13 => r17
  add r13, r14 => r18
  add r14, r15 => r19

  // Row 8
  add r16, r17 => r20
  add r17, r18 => r21
  add r18, r19 => r22

  // Output
  store r21 => r26
  output 1024

  // Row 9 
  add r20, r21 => r23
  add r21, r22 => r24

  // Row 10
  add r23, r24 => r25

  // Output
  store r25 => r26
  output 1024
