//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 2 2
//OUTPUT: 2 2 4 19
//
// Add two numbers in a convoluted way.
// Output both numbers, their sum, and also 19.
// Inputs: the numbers to add, in locations 1024 and 1028
//
// e.g. ./sim -s 3 -i 1024 2 2 < s45_test.i

loadI 19 => r19
loadI 1036 => r0
store r19 => r0

output 1024 // addend 1

output 1028 // addend 2

// sum: load test
loadI 1024 => r2
loadI 1028 => r3
load r3 => r1
load r2 => r2
add r1, r2 => r3
// did the simulator block for load correctly?
// If so, sum is in r3.

// output: store test
loadI 1032 => r4
store r3 => r4
output 1032
// did the simulator block for store?
// if so, the output is correct

output 1036
// 19, to make sure outputs are scheduled correctly
