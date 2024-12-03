//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1
//OUTPUT: 512
//
// COMP 412, Lab 3
// Usage before scheduling: ./sim -s 3 -i 1024 1 <  s56_dependency.i
// Expected output: 512
// 
// Tests register and memory dependency.
//
//
loadI 1024 => r1
load  r1 => r2
loadI 4 => r3
loadI 511 => r4
add r2,r4 =>r5
add r1,r3 => r6
store r5 => r6
//
output 1028

