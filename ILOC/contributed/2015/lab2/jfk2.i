//NAME: John King
//NETID: jfk2
//SIM INPUT:
//OUTPUT: 0 1 1 2 3 5 8 13 21 34
//
// Calculates the first 10 fibonacci numbers

// Our first two fibonacci numbers
loadI 0 => r1
loadI 1 => r2

// Calcualte 3rd
add r1, r2 => r3

// Calcualte 4th
add r2, r3 => r4

// Calcualte 5th
add r3, r4 => r5

// Calcualte 6th
add r4, r5 => r6

// Calcualte 7th
add r5, r6 => r7

// Calcualte 8th
add r6, r7 => r8

// Calcualte 9th
add r7, r8 => r9

// Calcualte 10th
add r8, r9 => r10

// Load up all the memory addresses
loadI 0 => r11
loadI 4 => r12
loadI 8 => r13
loadI 12 => r14
loadI 16 => r15
loadI 20 => r16
loadI 24 => r17
loadI 28 => r18
loadI 32 => r19
loadI 36 => r20

// Store the values in memory
store r1 => r11
store r2 => r12
store r3 => r13
store r4 => r14
store r5 => r15
store r6 => r16
store r7 => r17
store r8 => r18
store r9 => r19
store r10 => r20

// And now output them
output 0
output 4
output 8
output 12
output 16
output 20
output 24
output 28
output 32
output 36


