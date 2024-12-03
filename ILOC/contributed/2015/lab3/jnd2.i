//NAME: Jessica Dawson
//NETID: jnd2
//SIM INPUT: -i 2000 1 2 3 4
//OUTPUT: 1 2 3 4

// Simple test to make sure graph simplification happens and doesn't break
// everything. Load all the input values into memory, mix around some stores
// to keep things interesting, and output the input (which has been
// written over itself).
loadI 2000 => r0
load r0 => r5	// 1 from 2000
loadI 1 => r1
add r0, r1 => r2
add r2, r1 => r2
add r2, r1 => r2
add r2, r1 => r2
store r5 => r0	// store this right back where we found it (2000)
load r2 => r3	// 2 from 2004 -- this shouldn't wait for the store above
add r2, r3 => r4
add r4, r3 => r4
load r4 => r4	// 3 from 2008 (depends on second input -- subsequent memops should wait!)
loadI 12 => r5
add r0, r5 => r5
load r5 => r6	// 4 from 2012
store r3 => r2	// (2004) this shouldn't wait for the load above
output 2000	// this shouldn't wait for the store above
output 2004	// this *should* wait for the store above
output 2008	// this should wait for the previous output
output 2012	// this should wait for the previous output