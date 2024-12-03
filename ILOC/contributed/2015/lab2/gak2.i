//NAME: Greg Kinman
//NETID: gak2
//SIM INPUT:
//OUTPUT: 0 1 1 2 3 5 8 13 21 34 55

// Calculates the first 11 numbers in the Fibonacci sequence.

// Loads seed values. These registers are live past the next section and thus will need to be spilled.
loadI 0 => r0
loadI 1 => r1

// Loads the memory addresses for storing the output. These will need to be spilled and reloaded in the computation
// section.
loadI 4 => r20
loadI 8 => r21
loadI 12 => r22
loadI 16 => r23
loadI 20 => r24
loadI 24 => r25
loadI 28 => r26
loadI 32 => r27
loadI 36 => r28
loadI 40 => r29
loadI 44 => r30

// Computes the first 10 Fibonacci numbers and stores them to memory.
// 0
add r0, r0 => r10
store r10 => r20
// 1
add r10, r1 => r11
store r11 => r21
// 2
add r10, r11 => r12
store r12 => r22
// 3
add r11, r12 => r13
store r13 => r23
// 4
add r12, r13 => r14
store r14 => r24
// 5
add r13, r14 => r15
store r15 => r25
// 6
add r14, r15 => r16
store r16 => r26
// 7
add r15, r16 => r17
store r17 => r27
// 8
add r16, r17 => r18
store r18 => r28
// 9
add r17, r18 => r19
store r19 => r29
// 10
add r18, r19 => r20
store r20 => r30

output 4
output 8
output 12
output 16
output 20
output 24
output 28
output 32
output 36
output 40
output 44
