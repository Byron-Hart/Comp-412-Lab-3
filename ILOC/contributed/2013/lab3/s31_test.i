//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 2 1
//
// Comp 412 Lab #3
// Usage before scheduling: ./sim -s 3 < s31_test.i
//
// Tests two independent stores occuring on the same memory.
//
	loadI 	1	=> r1 
	loadI 	2	=> r2 
	loadI 	1032	=> r3
	store 	r1	=> r3	
	store 	r2	=> r3	
	output 1032
	store 	r2	=> r3	
	store 	r1	=> r3	
	output 1032
