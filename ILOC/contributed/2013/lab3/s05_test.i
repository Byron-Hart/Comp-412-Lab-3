//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1 2 3 4 5 6 7
//OUTPUT: 7 6 5 4 3 2 1
//
// Peter - 1
// Reverse a seven-element array given in the command line starting at memory location 1024

// Usage before scheduling: ./sim -s 3 -i 1024 1 2 3 4 5 6 7 < s05_test.i
// Expected output: 7 6 5 4 3 2 1

// Test for ability to parallelize
loadI 4000 => r40
loadI 4004 => r41
loadI 4008 => r42

loadI 1024 => r0
load r0 => r10
loadI 1028 => r1
load r1 => r11
loadI 1032 => r2
load r2 => r12
loadI 1036 => r3
load r3 => r13
loadI 1040 => r4
load r4 => r14
loadI 1044 => r5
load r5 => r15
loadI 1048 => r6
load r6 => r16

// three swap sections, swapping two numbers. in high level terms, think:
// temp = a;
// a = b;
// b = temp;
// with a good scheduler, the three sections below should be able to be scheduled relatively independently (since the registers and memory locations are all different)

// swap section 1: r40 is the 'temp variable'
// swap beginning and end
// put r0 at 4000
store r10 => r40
// get r16 - actual value, store into address
store r16 => r0
// load 'temp' value at 4000 into 
load r40 => r16
store r16 => r6

// swap section 2: r41 is another 'temp variable'
store r11 => r41
store r15 => r1
load r41 => r15
store r15 => r5

// swap section 3: r42 is another 'temp variable'
store r12 => r42
store r14 => r2
load r42 => r14
store r14 => r4

// output what should be the reversed order of the 7 numbers
output 1024 
output 1028
output 1032 
output 1036 
output 1040 
output 1044 
output 1048
