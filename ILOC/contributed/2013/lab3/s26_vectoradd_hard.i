//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 3 5 7 9
//OUTPUT: 10 14
//
// Expects values in 1024, 1028, 1032, and 1036
// will add 1024 to 1032 and 1028 to 1036, then print the result
// vector addition (the hard way)
loadI 4 => r0
// Read first value
loadI 1024 => r1
load r1 => r10
// This does nothing except mess up the dependencies for subsequent loads
store r10 => r1
// Read second value
add r0, r1 => r2
load r2 => r11
// Read third value
add r0, r2 => r3
load r3 => r12
// Read fourth value
add r0, r3 => r4
load r4 => r13
// storing vector addition memory addresses
loadI 0 => r5
add r5, r5 => r6
add r5, r0 => r7
// first value
add r10, r12 => r1
store r1 => r6
// second value
add r11, r13 => r2
store r2 => r7
output 0
output 4
