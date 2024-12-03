//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 8 12
//OUTPUT: 8 12 8 0 0
//
// Comp 412 Lab #3 - thomasTestBlock.i
//
// Tests whether scheduler handles various orderings of loads and stores
// Expects initial values in 1024 and 1028
// To ensure word alignment, initial values must be multiples of four
// Usage before scheduling: ./sim -s 3 -i 1024 n n
//

loadI	1024	=> r8
loadI	1028	=> r9

load	r8	=> r8

load 	r9	=> r9  

loadI 	1032	=> r10 
loadI 	1036	=> r11 

loadI 	1040	=> r12 

// store before load
store 	r8	=>	r10
load 	r10	=>	r14

// load before store
load 	r9 	=>	r15
store 	r15 => 	r12

output 1024
output 1028
output 1032
output 1036
output 1040
