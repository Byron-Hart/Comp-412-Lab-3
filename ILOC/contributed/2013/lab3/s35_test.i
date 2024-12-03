//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 12
//
// Renaming Tester
//
// Requires no input 
// Should output 12.

loadI 1 => r10
loadI 2 => r10
add r10, r10 => r10 // should be 4 here
add r10, r10 => r10 // 8
loadI 1024 => r11
store r10 => r11
loadI 2 => r12
add r12, r12 => r12
add r12, r10 => r10
store r10 => r11
output 1024
