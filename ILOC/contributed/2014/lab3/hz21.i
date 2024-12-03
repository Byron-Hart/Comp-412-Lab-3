//NAME: Hanzhang (Linda) Zheng
//NETID: hz21
//SIM INPUT:
//OUTPUT: 120 14400 28800
//
// Comp 412, Lab 3 - hz21.i
// 
// Tests the scheduler's ability to keep the order of operations correct, 
// by storing and outputting different values to the same memory address.
//
// Usage: ./sim < hz21.i

loadI 8 => r1
loadI 15 => r2
mult r1, r2 => r3
store r3 => r1
output 8
load r1 => r4
mult r4, r4 => r5
store r5 => r1
output 8
load r1 => r6
add r6, r6 => r7
store r7 => r1
output 8
