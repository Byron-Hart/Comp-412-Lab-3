//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 5 3
//OUTPUT: 8 2 15
//
// Comp 412 Lab 3 s46_test.i
//
//By Vincent Wang
// Basic ILOC operation to evaluate the basic arithmetic functions
// Needs inputs in 1024, 1028
// Usage before scheduling ./sim -s 3 -i 1024 n n < s46_test.i
//
loadI 1024 => r0
loadI 1028 => r1
//
load r0 => r2
load r1 => r3

loadI 1032 => r10
loadI 1036 =>r11
loadI 1040 => r12

//find sum
add r2, r3 => r4
store r4 => r10
output 1032

//find difference
sub r2, r3 => r4
store r4 => r11
output 1036

//find product
mult r2, r3 => r4
store r4 => r12
output 1040
