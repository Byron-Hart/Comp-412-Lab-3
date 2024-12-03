//NAME: Emma Breen
//NETID: eeb3
//SIM INPUT: -i 2000 1 2 3 4 5
//OUTPUT: 11 12 13 14 15
//
// Description:
// The scheduler should ideally not create a dependency between
// two lines of memory code (loads -> stores, outputs -> stores,
// stores -> loads, or stores -> outputs) if the two operations are
// disjoint.  This code is designed so that much more efficiency can be
// achieved if the compiler recogizes this and does not create these
// dependencies.
loadI 2000      => r1
loadI 4         => r2
loadI 10        => r3
load r1         => r5
add r5, r3      => r5
// Pointless arithmetic on mem address that compiler should see through
sub r1, r2      => r1
add r1, r2      => r4   // Should be 2000
store r5        => r4

add r4, r2      => r1
load r1         => r5
add r5, r3      => r5
// Pointless arithmetic
sub r1, r2      => r1
add r1, r2      => r4   // Should be 2004
store r5        => r4

add r4, r2      => r1
load r1         => r5
add r5, r3      => r5
// Pointless arithmetic
sub r1, r2      => r1
add r1, r2      => r4   // Should be 2008
store r5        => r4

add r4, r2      => r1
load r1         => r5
add r5, r3      => r5
// Pointless arithmetic
sub r1, r2      => r1
add r1, r2      => r4   // Should be 2012
store r5        => r4

add r4, r2      => r1
load r1         => r5
add r5, r3      => r5
// Pointless arithmetic
sub r1, r2      => r1
add r1, r2      => r4   // Should be 2016
store r5        => r4

output 2000
output 2004
output 2008
output 2012
output 2016
// end of block
