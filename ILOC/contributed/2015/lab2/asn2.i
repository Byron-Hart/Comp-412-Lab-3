//NAME: Ayush Narayan
//NETID: asn2
//SIM INPUT: -i 2048 4 1 8 5 2 13
//OUTPUT: 3 12 3
//
// COMP 412, Lab 1, block "asn2.i"
//
// This report block was submitted as a Lab 1 
// test block by Ayush Narayan in Fall 2015.
//
// Example usage: ./sim -i  2048 4 1 8 5 2 13 < asn2.i
//
// This code performs Cramer's rule for evaluating systems of equations
// The input numbers are the linear coefficients for a system of equations. 
// This input would give the matrix:
// 4x + 1y = 8
// 5x + 2y = 13 
//
// Giving the solution
// x = 3/3, y = 12/3
//
// Which is then represented in numerator of x, numerator of y, 
// denominator as:
// 
// 3 12 3
//
// This program computes the solution for a 2x2 system with a non-null
// solution using Cramer's Rule.
//
// Consider the input matrix to be like this:
// ax + by = c 
// dx + ey = f
//
// First we should load all the input

loadI 2048 => r0
load r0 => r0 
loadI 2052 => r1
load r1 => r1 
loadI 2056 => r2
load r2 => r2 
loadI 2060 => r3
load r3 => r3 
loadI 2064 => r4
load r4 => r4 
loadI 2068 => r5
load r5 => r5 

// Time to find the denominator of solutions (stored in r8)
mult r0,r4 => r6
mult r1,r3 => r7
sub r6,r7 => r8

// Time to find the numerator of solution for Dx (stored in r11)
mult r2,r4 => r9
mult r5,r1 => r10
sub r9,r10 => r11

// Time to find the numerator of solution for Dy (stored in r14)
mult r0,r5 => r12
mult r2,r3 => r13
sub r12,r13 => r14

// Print output
loadI 2116 => r101
store r11 => r101
output 2116

loadI 2120 => r102
store r14 => r102
output 2120

loadI 2112 => r100
store r8 => r100
output 2112
