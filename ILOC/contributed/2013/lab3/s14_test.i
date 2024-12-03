//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1 1
//OUTPUT: 4
//
// Comp 412 Lab #3 - s14_test.i
// 
// Just a long random computation
// A shortened version of block 1 - makes for easier debugging.
//
// Expects input values at 1024 and 1028 (for example, 1 and 1)
// Usage before scheduing ./sim -s 3 -i 1024 n n < s14_test.i
//
loadI	1032	=> r1
loadI	1024	=> r2
load	r2	=> r3
loadI	4	=> r4
loadI	1028	=> r5
load	r5	=> r6

store	r3	=> r1
add	r1,r4	=> r7
add	r3,r6 => r8
store	r8	=> r7


load	r7	=> r9
loadI	1036	=> r10
load	r10	=> r11
mult	r9,r11	=> r12
loadI	1040	=> r13
store	r12	=> r13

output	1040


