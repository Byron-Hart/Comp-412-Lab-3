//NAME: Aaron Braunstein
//NETID: arb11
//SIM INPUT: -i 1024 3 5 10 2 7 20
//OUTPUT: 58
//
// This block computes a number whose absolute
// value is the area of the triangle defined
// by points (x1, y1), (x2, y2), (x3, y3)
// rounded down to an integer
// The algorithm is based on the fact that
// 1/2 * | [x1 y1 1] |
//       | [x2 y2 1] |
//       | [x3 y3 1] |
// is equal to the area of the triangle
//
// The input format is
// -i 1024 x1 y1 x2 y2 x3 y3

  loadI 1024 => r1
  loadI 1028 => r2
  loadI 1032 => r3
  load r1 => r1           // inst x1
  load r2 => r22          // inst y1
  load r3 => r3           // inst x2
  
  loadI 1036 => r4
  load r4 => r44          // inst y2
  
  loadI 1040 => r5
  load r5 => r5           // inst x3
  
  loadI 1044 => r6
  load r6 => r66          // inst y3
  
  loadI 1 => r20          // inst 1
  loadI 1048 => r999      // hold output
  
  sub r44, r66 => r7      // y2 - y3
  sub r3, r5 => r8        // x2 - x3
  
  mult r3, r66 => r6      // x2 * y3
  mult r5, r44 => r44     // x3 * y2
  
  mult r1, r7 => r1       // x1 * (y2 - y3)
  mult r22, r8 => r22     // y1 * (x2 - x3)
  
  sub r1, r22 => r9       // x1 * (y2 - y3)
                          // - y1 * (x2 - x3)
  sub r6, r44 => r3       // x2 * y3 - x3 * y2
  
  add r9, r3 => r3        // determinant of
                          // [x1 y1 1]
                          // [x2 y2 1]
                          // [x3 y3 1]
  
  rshift r3, r20 => r100  // area (may be
                          // negative)
  
  store r100 => r999      // store result
  output 1048             // print result
  
