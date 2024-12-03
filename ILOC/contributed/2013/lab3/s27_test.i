//NAME: COMP412
//NETID: comp412
//SIM INPUT: 
//OUTPUT: 8 16
//
// Author: Shangyu Luo
// Usage before scheduling: ./sim -s 3 < s27_test.i
// Test lshift and useless op
//
loadI 256 => r1
loadI 2 => r2
lshift r1, r2 => r1
mult r2, r2 => r2
add r2, r2 => r2
store r2 => r1
loadI 1024 => r3
loadI 1032 => r4
add r2, r2 => r2
store r2 => r4
output 1024
output 1032
