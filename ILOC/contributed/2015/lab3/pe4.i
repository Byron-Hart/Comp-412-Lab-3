//Name: Peter Elmers
//NETID: pe4
//SIM INPUT:
//OUTPUT: 1028 1024

// This block does not rely on outside input, so a scheduler that implements
// simplification via constant value propogation should have the best result.
// Since the block consists almost entirely of stores and loads, a
// non-simplifying scheduler will perform markedly worse than one that does
// simplify.

loadI 4 => r0
loadI 1024 => r1
loadI 1028 => r10
loadI 1032 => r11
add r0,r1 => r100
// r100 and r10 hold the same value.
store r10 => r100 // mem 1028 <- 1028
store r0 => r11
load r0 => r101
nop 
load r101 => r110 // gets 1028
store r1 => r11 // mem 1032 gets 1024
store r101 => r1 // mem 1028 gets 1028

output 1028
output 1032

