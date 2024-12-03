//NAME: Daniel Hsu
//NETID: dh15
//SIM INPUT: 
//OUTPUT: 5 10 15 50
// Input requirements: nothing.
// Displays 5 and 10 and the product of the two, and the addition of the two.
// Tests general correctness as well as output edges being in order. 
loadI 1024 => r1
loadI 1028 => r2
loadI 5 => r3
loadI 10 => r4
store r3 => r1
store r4 => r2
load r1 => r5
load r2 => r6
mult r5,r6 => r7
add r5,r6 => r8
output 1024
output 1028
store r7 => r1
store r8 => r2
output 1028
output 1024

