//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 1 2 3
//
// A simple counter 
// Tests if dependencies are computed correctly,
// including register renaming or anti-dependencies.
//
// Usage before scheduling: ./sim -s 3 < s40_test.i
// Expected output: 1 2 3
	loadI 0 => r0
	loadI 1 => r1
	loadI 4 => r9
	loadI 2000 => r10

	add r0, r1 => r2
	add r2, r1 => r3
	add r3, r2 => r4

	store r2 => r10
	add r9, r10 => r10
	store r3 => r10
	add r9, r10 => r10
	store r4 => r10

	output 2000
	output 2004
	output 2008
