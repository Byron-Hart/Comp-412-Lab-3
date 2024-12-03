//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1 2 3 4 5 6 7 8 9 10
//OUTPUT: 2 6 12 20 30
//
// COMP 412, Lab 3, s54_test.i
//
// Example usage: sim -s 1 -i 1024 1 2 3 4 5 6 7 8 9 10 < s54_test.i
// Calculate the product of the adjacent two numbers
	loadI 	1024 	=> r0
	loadI 	1028	=> r1
	loadI	4	=> r2
//
	load  	r0 	=> r10
	load	r1	=> r11
	mult	r10, r11	=> r10
	store	r10	=> r0
	add	r0, r2	=> r0
	add	r1, r2	=> r1

	load  	r0 	=> r10
	load	r1	=> r11
	mult	r10,r11	=> r10
	store	r10	=> r0
	add	r0,r2	=> r0
	add	r1,r2	=> r1

	load  	r0 	=> r10
	load	r1	=> r11
	mult	r10,r11	=> r10
	store	r10	=> r0
	add	r0,r2	=> r0
	add	r1,r2	=> r1

	load  	r0 	=> r10
	load	r1	=> r11
	mult	r10,r11	=> r10
	store	r10	=> r0
	add	r0,r2	=> r0
	add	r1,r2	=> r1

	load  	r0 	=> r10
	load	r1	=> r11
	mult	r10,r11	=> r10
	store	r10	=> r0
	add	r0,r2	=> r0
	add	r1,r2	=> r1

//
	output 	1024
	output	1028
	output	1032
	output	1036
	output	1040
//
