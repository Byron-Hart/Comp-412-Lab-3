//NAME: Weston Ruths
//NETID: wcr1
//SIM INPUT: -i 2048 5 2
//OUTPUT: 5 7 9 11 11
//
// COMP 412, Lab 1, block "wcr1.i"
//
// Example usage: ./sim -i  2048 5 2 < wcr1.i
//
// This input assigns values to variables 'a' and 'd':
// a = 5
// d = 2
//
// This program computes the first 4 values in the following
// arithmetic sequence by incrementing by d:
// {a, a+d, a+2d, a+3d, ...}
//
// We then verify the 4th value by using the rule associated
// with this arithmetic sequence:
// x_n = a + d(n-1)
//
// First we should load the input
loadI 2048 => r0
load r0 => r0 // loading a
loadI 2052 => r1
load r1 => r1 // loading d
// Now we start by outputting the first value in the sequence
loadI 2100 => r1000
store r0 => r1000
output 2100
// Next we increment and output the second value
add r0, r1 => r2
loadI 2104 => r1001
store r2 => r1001
output 2104
// Next we increment again and output the third value
add r2, r1 => r3
loadI 2108 => r1002
store r3 => r1002
output 2108
// Once again we increment to find the fourth value
add r3, r1 => r4
loadI 2112 => r1003
store r4 => r1003
output 2112
// Lastly we verify our sequence using the associated rule
loadI 4 => r5 // n = 4
loadI 1 => r10
sub r5, r10 => r5 // (n - 1)
mult r1, r5 => r6 // d(n-1)
add r6, r0 => r999 // a + d(n-1)
// Now we output
loadI 2100 => r1000
store r999 => r1000
output 2100
