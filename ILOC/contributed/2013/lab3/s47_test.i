//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 2 3
//OUTPUT: 2 3 9 4
//
// COMP 412 Lab 3
// Usage before scheduling: ./sim -s 3 -i 1024 2 3 < s47_test.i
//This block is to test the renaming and dependence

loadI 1024 => r10
loadI 1028 =>r0
load r10 => r2
load r0 => r1
store r2 => r0
output 1028
store r1 => r10
output 1024

load r0 => r1
load r10 => r2
mult r1,r1 => r1
mult r2, r2 => r2
store r1 => r0
store r2=> r10
output 1024
output 1028
