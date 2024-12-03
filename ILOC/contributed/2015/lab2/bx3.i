//NAME: Bing Xue
//NETID: bx3
//SIM INPUT:
//OUTPUT: 1 1 2 5 14 42

// This block calculates and outputs the first 6 Catalan number.

//Initialize the registers with addresses for storing the numbers
loadI 1024 => r1
loadI 1028 => r2
loadI 1032 => r3
loadI 1036 => r4
loadI 1040 => r5
loadI 1044 => r16
//Initialize the 0th Catalan number
loadI 1 => r6
store r6 => r1

//Calculate the 1st Catalan number
mult r6, r6 => r7
store r7 => r2

//Calcluate the 2nd Catalan number
mult r6, r7 => r8
mult r6, r7 => r9
add r8, r9 => r8
store r8 => r3

//Calculate the 3rd Catalan number
mult r6, r8 => r10
mult r7, r7 => r11
add r10, r11 => r10
mult r8, r6 => r11
add r10, r11 => r10
store r10 => r4

//Calculate the 4th Catalan number
mult r6, r10 => r12
mult r7, r8 => r13
add r12, r13 => r12
mult r8, r7 => r13
add r12, r13 => r12
mult r10, r6 => r13
add r12, r13 => r12
store r12 => r5

//Calculate the 5th Catalan number
mult r6, r12 => r14
mult r7, r10 => r15
add r14, r15 => r14
mult r8, r8 => r15
add r14, r15 => r14
mult r10, r7 => r15
add r14, r15 => r14
mult r12, r6 => r15
add r14, r15 => r14
store r14 => r16

//output the results
output 1024
output 1028
output 1032
output 1036
output 1040
output 1044

