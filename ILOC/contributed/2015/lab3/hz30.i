//NAME: Hongfa Zeng
//NETID: hz30
//SIM INPUT: -i 4000 888
//OUTPUT: 4888 1776 888 888 29000 888
//
// This block is used to test how well the scheduler performs when most of stores are
// independent. In this case, addresses can be easily calculated if the scheduler is able
// to keep track of their values.

loadI 4000 => r0	// r0 = 4000
load r0 => r1
loadI 1000 => r2	// r2 = 1000
add r0, r2 => r3	// r3 = 5000
loadI 2 => r4		// r4 = 2
loadI 4 => r5		// r5 = 4
add r0, r3 => r6	// r6 = 9000
mult r4, r0 => r7	// r7 = 8000
mult r5, r3 => r8	// r8 = 20000
add r8, r6 => r9	// r9 = 29000

store r9 => r0
store r1 => r3
store r1 => r6
store r1 => r7
store r1 => r8
store r1 => r9

add r1, r0 => r10
mult r4, r1 => r11

store r10 => r9
output 29000
store r11 => r8
output 20000

output 8000
output 9000
output 4000
output 5000
