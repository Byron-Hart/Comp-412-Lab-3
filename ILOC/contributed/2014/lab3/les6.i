//NAME: Lauren Staal
//NETID: les6
//SIM INPUT:
//OUTPUT: 8 8
// Test to make sure code for taking advantage of store's non-blocking works.
// Store should wait until completion for dependent load, but not for other stores.
//
loadI 1024 => r1
loadI 1028 => r2
loadI 1032 => r3
loadI 4 => r4
// Dependent store and load
store r4 => r1
load r1 => r6
// 4 + 4
add r4, r4 => r5
// Two independent stores
store r5 => r2
store r5 => r3
// should print 8 twice
output 1028
output 1032
