//NAME: Jake Kornblau
//NETID: jak6
//SIM INPUT:  -i 2000 4
//OUTPUT: 1 2 3 4

// Loads values for storing to memory
loadI 2000 => r0
loadI 4 => r1
load r0 => r2 // 4, unknown to compiler

// Loads values for output
loadI 1 => r3
loadI 2 => r4
loadI 3 => r5

// Calculates value for storing
add r0, r1 => r6 // 2004, known to compiler
add r6, r1 => r7 // 2008, known to compiler
add r7, r1 => r8 // 2012, known to compiler

// Stores values to memory. Add unique addresses known
// to the compiler so they should be done with no waiting time
// in-between
store r3 => r6
store r4 => r7
store r5 => r8

// Calculates 2000, but unknown to the compiler. Tests renaming. 
sub r6, r2 => r0

load r0 => r9 //r9 == r2, but the compiler doesn't know this

// Calculates value for storing
add r0, r1 => r6 // 2004, unknown to compiler
add r6, r1 => r7 // 2008, unknown to compiler
add r7, r1 => r8 // 2012, unknown to compiler

// Stores values to memory. Add unique addresses with respect to
// each other, but exact values are unknown to the compiler so 
// they should be done with no waiting time in-between
store r3 => r6
store r4 => r7
store r5 => r8

// Outputs 1,2,3,4
output 2004
output 2008
output 2012
output 2000
