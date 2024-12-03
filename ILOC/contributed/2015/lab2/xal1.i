//NAME: Xilin Liu
//NETID: xal1
//SIM INPUT: -i 1024 1 1 1 0 0 0 0 1
//OUTPUT: 1

// COMP 412 Lab 1, block "xal1.i"
//
// Finds the area of a parallelogram given the four corners
// of the quadrilateral. The algorithm finds the area of the
// smallest rectangle surrounding the parallelogram that is 
// parallel to the x and y axes. Then it subtracts
// the superfluous excess space.
// 
// The inputs for -i are first, the memadd at which the values 
// are stored in, followed by the four points of the shape
// in clockwise order starting from the topmost point.
// First the x value is given, and then the y value.
// 
// Returns the area of the parallelogram.
// 
// Example usage: cat xal1.i | sim -i 1024 1 1 1 0 0 0 0 1

// Load all the mem adds for inputs
loadI 1024 => r0
loadI 1028 => r1
loadI 1032 => r2
loadI 1036 => r3
loadI 1040 => r4
loadI 1044 => r5
loadI 1048 => r6

// Find the area of the smallest encompassing rectangle
load r1 => r1
load r5 => r5
sub r1, r5 => r8
load r2 => r2
load r6 => r6
sub r2, r6 => r9
mult r8, r9 => r10

// Find the sum of the areas of the excess area triangles
// in the top right and lower left corners 
load r0 => r0
load r3 => r3
sub r1, r3 => r11
sub r2, r0 => r12
mult r11, r12 => r13

// Find the sum of the areas of the excess area triangles
// in the lower right and top left corners 
load r4 => r4
sub r3, r5 => r14
sub r2, r4 => r15
mult r14, r15 => r16

// Subtract the excess area triangles from the encompassing rectangles
sub r10, r13 => r17
sub r17, r16 => r18
loadI 1056 => r19
store r18 => r19
output 1056