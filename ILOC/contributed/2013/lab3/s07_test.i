//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1 2 3
//OUTPUT: 2060
//
// Lab 3 test block - s07_test.i
// Nelson Chen
//
// Expects three inputs at locations 1024, 1028, and 1032
// Usage before scheduing ./sim -s 3 -i 1024 n n n < s07_test.i
//
// this tests a case where naive register renaming will collide with original register names
// so the add will turn into "add r3, r3 => r4" instead of add "r2, r3 => r4"
// it just forces you to be a tad bit more clever with register renaming to prevent a potential error that is *very* annoying to debug

	loadI 	1024	=> r3
	loadI	1028	=> r1
	loadI 	1032	=> r2
	add     r1, r2  => r4
	store 	r4	=> r3
	output  1024
