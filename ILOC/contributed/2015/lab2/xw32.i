//NAME: Xiongfei Wei
//NETID: xw32
//SIM INPUT: -i 2048 0 1
//OUTPUT: 0 1 1 2 3 5 8 13 21 34

// COMP 412, Lab1
// Calculate the first 10 Fibonacci numbers
// The input parameters indicate the first two Fibonacci numbers.
 
loadI 2048=>r0
load r0=>r0
loadI 2052 => r1
load r1 => r1

// Initializes some registers to hold the memory address into which the final results will be stored.
loadI 1024 => r2
loadI 1028 => r3
loadI 1032 => r4
loadI 1036 => r5
loadI 1040 => r6
loadI 1044 => r7
loadI 1048 => r8
loadI 1052 => r9
loadI 1056 => r10
loadI 1060 => r11

// Calculate the 3rd number
add r0, r1 => r12

// Calculate the 4th number
add r1, r12 => r13

// Calculate the 5th number
add r12, r13 => r14

// Calculate the 6th number
add r13, r14 => r15

// Calculate the 7th number
add r14, r15 => r16

// Calculate the 8th number
add r15, r16 => r17

// Calculate the 9th number
add r16, r17 => r18

// Calculate the 10th number
add r17, r18 => r19

// Store the result into the memory.
store r0 => r2
store r1 => r3
store r12 => r4
store r13 => r5
store r14 => r6
store r15 => r7
store r16 => r8
store r17 => r9
store r18 => r10
store r19 => r11

// Output the first 10 Fibonacci numbers
output 1024
output 1028
output 1032
output 1036
output 1040
output 1044
output 1048
output 1052
output 1056
output 1060
