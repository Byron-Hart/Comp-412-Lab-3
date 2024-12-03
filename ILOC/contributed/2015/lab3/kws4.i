//NAME: Kevin Smith
//NETID: kws4
//SIM INPUT:
//OUTPUT: 2
// COMP 412, Lab 3, Fall 2015, contributed block "kws4.i"
// This block tests how the scheduler handles stores that repeatedly
// write to the same location but are never used. A conservative
// scheduler might wait until a store has completed before starting a new one
// at the same location, but a more aggressive scheduler can exercise less
// patience with these useless stores without sacrificing correctness.

loadI 1024 => r0
loadI 4 => r4
loadI 1 => r1
loadI 2 => r2
lshift r2, r1 => r10
lshift r2, r1 => r11
rshift r2, r1 => r12
lshift r11, r1 => r11
lshift r12, r1 => r12
store r2 => r10
store r1 => r4
lshift r10, r1 => r10
store r1 => r10
store r2 => r4
store r2 => r0
lshift r11, r1 => r11
lshift r12, r1 => r12
lshift r11, r1 => r11
lshift r12, r1 => r12
lshift r11, r1 => r11
lshift r12, r1 => r12

output 1024
