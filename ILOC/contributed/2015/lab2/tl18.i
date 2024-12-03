//NAME: Terry Lin
//NETID: tl18
//SIM INPUT: -i 2048 7 20 11 8 25 148
//OUTPUT: 2230 44600 46830
//
// COMP 412, Lab 1
//
// This block takes in 6 inputs, with 2 sets of 3 inputs described as follows
// a starting value, a n number of terms, and a difference 
// It will then calculate the sum of the series starting with the
// starting value, with n terms, and the given difference between each term.
// For example, this one is testing a series starting with 7, 20 terms and a
// difference of 11 between each term. Thus: 7 + 18 + 29 + 40 ... for 20 terms
// The output is equal to 2230
// It does this twice with the 6 inputs, and then it adds these two summations
// together. Thus in this case it would be 7 + 18 + 29 + ... = 2230 for the
// first set of inputs. 8 + 156 + 304 + ... = 44600 for the second. And the sum
// of these two will be the last output or 2230 + 44600 = 46830.
// Load in all the inputs
loadI 2048 => r0
load r0 => r0
loadI 2052 => r1
load r1 => r1
loadI 2056 => r2
load r2 => r2
loadI 2060 => r12
load r12 => r12
loadI 2064 => r13
load r13 => r13
loadI 2068 => r14
load r14 => r14
//Starting first summation
//Load 2 into a register
loadI 2 => r3
mult r0, r3 => r4
loadI 1 => r5
sub r1,r5 => r6
mult r2,r6 => r7
add r4,r7 => r8
mult r1,r8 => r9
rshift r9, r5 => r10
loadI 2080 => r11
store r10 => r11
//Starting second summation
mult r12, r3 => r15
sub r13,r5 => r16
mult r14,r16 => r17
add r15,r17 => r18
mult r13,r18 => r19
rshift r19,r5 => r20
loadI 2084 => r21
store r20 => r21
//Add the two summations
add r20, r10 => r22
loadI 2088 => r23
store r22 => r23
//Output the values
output 2080
output 2084
output 2088
