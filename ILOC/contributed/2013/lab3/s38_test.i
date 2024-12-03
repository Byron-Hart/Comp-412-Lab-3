//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 3 5 7 9
//OUTPUT: 4 6 8 10
//
// Comp 412, Fall 2013, Lab 3
// Instruction Scheduling
// Block provided by Galen Schmidt, sgs2
// *** Usage before scheduling: sim -s 3 -i 1024 w x y z < s38_test.i
// Expected output: w + 1, x + 1, y + 1, z + 1

// start off by loading memory values into registers
loadI   1024   => r0
loadI   1028   => r1
loadI   1032   => r2
loadI   1036   => r3

// do a bunch of unrelated multiplies which store to the same value.
// this will test if the program handles anti-dependencies correctly
loadI   1      => r4
mult    r4, r4 => r4
mult    r4, r4 => r4
mult    r4, r4 => r4
mult    r4, r4 => r4
mult    r4, r4 => r4

// do a bunch of long operations in a row
load    r0     => r5
add     r4, r5 => r5

load    r1     => r6
add     r4, r6 => r6

load    r2     => r7
add     r4, r7 => r7

load    r3     => r8
add     r4, r8 => r8


// store the results
store   r5     => r0
store   r6     => r1
store   r7     => r2
store   r8     => r3

// output the results
output 1024
output 1028
output 1032
output 1036

