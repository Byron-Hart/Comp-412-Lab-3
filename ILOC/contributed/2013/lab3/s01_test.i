//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 0 1
//OUTPUT: 13
//
// COMP 412, Fall 2013, Lab 3
// Waseem Ahmad (wa1)
// s01_test
// *** Usage before scheduling: sim -s 3 -i 1024 0 1
// Expected output: 13
// Computes the 6th following element in the fibonnacci sequence given 
// the last 2 elements. Specifically designed to test the register renaming
// capability of my program.
loadI 1024 => r1
load r1 => r1
loadI 1028 => r2
load r2 => r2
add r1, r2 => r1
add r1, r2 => r2
add r1, r2 => r1
add r1, r2 => r2
add r1, r2 => r1
add r1, r2 => r2
loadI 1032 => r3
store r2 => r3
output 1032
