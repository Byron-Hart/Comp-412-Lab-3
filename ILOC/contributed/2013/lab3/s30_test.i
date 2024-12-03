//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 24 6144
//
//Yan Mi - s30_test
//Usage: ./sim -s 3 < s30_test.i
//Expected output: 24 6144

	loadI 2000 => r1
	loadI 20 => r2
	store r2 => r1
	loadI 1996 => r1
	loadI 4 => r2
	add r1,r2 => r3
	//to make the priority of most recent r1 and r2 very high
	mult r2,r2 => r3
	mult r3,r2 => r3
	mult r3,r2 => r3
	mult r3,r2 => r3
	loadI 24 => r22
	sub r3,r22 => r3
	loadI 2 => r22
	mult r3,r22 => r3
	//should depend on the previous store
	load r3 => r4

	add r4,r2 => r4
	store r4 => r3
	output 2000

	//should depend on the above store
	loadI 2000 => r5
	load r5 => r5
	mult r5,r2 => r5
	loadI 2 => r6

	mult r5,r6 => r5
	mult r5,r6 => r5
	mult r5,r6 => r5
	mult r5,r6 => r5
	mult r5,r6 => r5
	mult r5,r6 => r5

	add r2,r3 => r3
	store r5 => r3
	output 2004
