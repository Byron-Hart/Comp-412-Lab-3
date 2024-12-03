//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 2048 6
//OUTPUT: 44
//
// COMP 412 Lab3 Self-created test block - s22_test.i
//
// Simple test block that many instructions before the store are alternative.
// Also, it provides a simple test for tie-breaking.
// 
// Expected input values at 2048.
// Usage before scheduling: ./sim -s 3 -i 2048 6 < s22_test.i
// 
loadI 2048 => r0
loadI 10 => r1
loadI 8 => r2
loadI 20 => r3
//
load r0 => r4
add r2, r1 => r5
add r5, r3 => r6
add r4, r6 => r7
//
store r7 => r0
//
output 2048
//
