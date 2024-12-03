//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 3 5 7 9
//OUTPUT: 10 14
//
// Expects values in 1024, 1028, 1032, and 1036
// will add 1024 to 1032 and 1028 to 1036, then print the result
// vector addition (the easy way)
//
loadI 1024 => r0
loadI 1028 => r1
loadI 1032 => r2
loadI 1036 => r3
loadI 0 => r4
loadI 4 => r5
// Reading values
load r0 => r10
load r1 => r11
load r2 => r12
load r3 => r13
add r10, r12 => r14
add r11, r13 => r15
store r14 => r4
store r15 => r5
output 0
output 4
