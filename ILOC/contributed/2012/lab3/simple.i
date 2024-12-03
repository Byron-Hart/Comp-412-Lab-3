//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 375
//
// COMP 412 Lab #3
// Usage before scheduling: ./sim -s 3 < simple.i
// A very simple file to see if we can get dependencies right
//
// 
//
loadI 5 => r1
loadI 10 => r2
add r1, r2 => r3
add r2, r3 => r1
mult r3, r1 => r2
//
// r2 is now actually r5
//
loadI 1024 => r1
store r2 => r1
load r1 => r2
store r2 => r1
load r1 => r2

output 1024
