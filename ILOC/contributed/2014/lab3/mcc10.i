//NAME: Marie Chatfield
//NETID: mcc10
//SIM INPUT: -i 1024 10 5 3 4 5 5
//OUTPUT: 5 7 25
//
// Tests memory serialization between registers. Fastest scheduling
// must perform addition on register values to recognize that there
// is no dependence between them.

// Load all addresses
loadI 	4		=> r0
loadI 	1024 	=> r1
add 	r0, r1 	=> r2
add 	r0, r2 	=> r3
add 	r0, r3 	=> r4
add 	r0, r4 	=> r5
add 	r0, r5 	=> r6

// Load values from each address into registers
load 	r1		=> r11
load 	r2		=> r12
load 	r3		=> r13
load 	r4		=> r14
load 	r5		=> r15
load 	r6		=> r16

// Perform simple algebra on registers
sub 	r11, r12	=> r21
add		r13, r14	=> r22
mult	r15, r16	=> r23

// Overwrite initial memory locations
store	r21		=> r1
store	r22		=> r2
store 	r23		=> r3

// Output results
output 1024
output 1028
output 1032
