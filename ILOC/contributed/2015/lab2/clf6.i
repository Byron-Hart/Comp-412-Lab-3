//NAME: Connie Feng
//NETID: clf6
//SIM INPUT:
//OUTPUT: 13 18

// Computes the midpoint between the points (10,16) and (8,28).
// The midpoint formula is ((x1+x2)/2, (y1+y2)/2).

// Checks that the scanner knows that r00001 is the same as r1.
// Checks that nop is ignored.
// Tests that the allocator correctly recognizes values that can be rematerialized, so
// loadI instructions should be moved to right before their first use.

// initialize the values
loadI 10 => r00 // x1
loadI 16 => r1  // x2
loadI 8 => r2   // y1
loadI 28 => r3  // y2
loadI 1 => r4
nop 

// compute (x1+x2)/2
add r0, r01 => r5
rshift r5, r4 => r5

// compute (y1+y2)/2
add r2, r3 => r006
rshift r6, r4 => r6

// initialize addresses to store results
loadI 128 => r7
loadI 132 => r8

// store the results to memory
store r5 => r7
store r6 => r8

// output the results
output 128
output 132
