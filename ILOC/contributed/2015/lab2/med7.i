//NAME: Meghan Doherty
//NETID: med7
//SIM INPUT: -i 1024 -4 6 2 8 4 4 6 -3 -1 -2 2 1
//OUTPUT: 22 -4 -19

// This simple ILOC program multiplies a 3x3 matrix by a 3x1 matrix. The input
// should be the values from the first matrix row by row, and then the second
// matrix. The output will be the three numbers in the column that results from
// the multiplication. Above is only one example input and the corresponding
// output. There is no requirement for the -r flag, unless the user wishes to
// check that for themselves. 

// Algorithm:
// a b c     j     a * j + b * k + c * l
// d e f  *  k  =  d * j + e * k + f * l
// g h i     l     g * j + h * k + i * l

// Example input
// -4  6  2     -2      22
//  8  4  4  *  -2  =  -4
//  6 -3 -1      1     -19

// Aspects of the allocator tested
// My test blocks is formatted to test a few different aspects of the local
// register allocator. First, in order to be efficient, rematerializable values
// must be considered in order to load all the values in at the beginning. I
// also spaced sections of the algorithm so that everything would have a fairly
// long live range. For exaple, it does all the multiplication of the rows
// before starting to add the results together. Finally, I used random space and
// register numbers to ensure basic correctness in the parsing/renaming process.

// Load the memory locations of the first matrix into registers
loadI 1024 =>	 r99
loadI 1028 =>	 r1
loadI 1032 =>	 r2
loadI 1036 =>	 r3
loadI 1040 =>	 r4
loadI 1044 =>	 r5
loadI 1048 =>	 r6
loadI 1052 =>	 r0
loadI 1056 =>	 r8

// Load the values from memory
load  r99 => r99
load  r1 => r1
load  r2 => r2
load  r3 => r3
load  r4 => r4
load  r5 => r5
load  r6 => r6
load  r0 => r0
load  r8 => r8

// Load the memory locations of the second matrix into registers
loadI 1060 => r9
loadI 1064 => r10
loadI 1068 => r11

// Load the values from memory
load r9 => r9
load r10 => r10
load r11 => r11

// First row
mult r99, r9 => r12
mult r1, r10 => r13
mult r2, r11 => r14

// Second row
mult r3, r9 => r15
mult r4, r10 => r16
mult r5, r11 => r17

// Third row
mult r6, r9 => r18
mult r0, r10 => r19
mult r8, r11 => r20

// Intermediate values
add r12, r13 => r21
add r15, r16 => r22
add r18, r19 => r23

// Final values
add r21, r14 => r24
add r22, r17 => r25
add r23, r20 => r26

// Output the result
loadI 1072 => r27
loadI 1076 => r28
loadI 1080 => r7

store r24 => r27
store r25 => r28
store r26 => r7

output 1072
output 1076
output 1080