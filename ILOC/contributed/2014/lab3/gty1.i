//NAME: George Yang
//NETID: gty1
//SIM INPUT: 
//OUTPUT: 1 4 9 0 0 0
//This test block shows some inefficiencies in my implementation.
//Specifically, I have some trouble with outputs directly after stores, 
//particularly if the outputs are not dependent on the stores. 
//The reference allocator gives 15 cycles on this, while mine gives 18. 
//Although there is still slight improvement as no scheduling gives 20 cycles.

loadI 1 => r1
loadI 2 => r2
loadI 3 => r3
loadI 1000 => r4
loadI 1004 => r6
loadI 1008 => r8
mult r1, r1 => r1
mult r2, r2 => r2
mult r3, r3 => r3
store r1 => r4
store r2 => r6
store r3 => r8
output 1000
output 1004
output 1008
output 2000
output 2004
output 2008

