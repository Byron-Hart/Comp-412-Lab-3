//NAME: Nick Merritt
//NETID: njm3
//SIM INPUT: -i 2000 2 3 5 7 11 13 17 19 23 29  
//OUTPUT: 4 6 8 10 12 14 16 18 20 22 24 36 52
//  proof of the goldbach conjecture? 
//
//  ... nah. just some fun wih the first 10 prime numbers.
//  this block is good for testing my tiebreaking priority
//  function, which gives priority to loads.

	loadI 	2000	=> r1
	loadI   0       => r22  // loadI added because r22 was undefined
	loadI   4       => r99
	add r1, r99     => r2
	add r2, r99     => r3
	add r3, r99     => r4
	add r4, r99     => r5
	add r5, r99     => r6
	add r6, r99     => r7
	add r7, r99     => r8
	add r8, r99     => r9
	add r9, r99     => r10

	load r1         => r12
		add r12, r12 => r24 //4

	load r2         => r13
	load r3         => r15
		add r13, r13 => r26 //6
		add r13, r15 => r28 //8

	load r4         => r17
		add r13, r17 => r210 //10
		add r15, r17 => r212 //12

	load r5         => r111

		add r13, r111 => r214 //14
		add r15, r111 => r216 //16
		add r17, r111 => r218 //18

	load r6         => r113

		add r17, r113 => r220 //20

	load r7         => r117
	load r8         => r119

		add r13, r119 => r222 //22
		add r17, r117 => r224 //24

	load r9         => r123
	load r10         => r129

		add r117, r119 => r236 //36
		add r123, r129 => r252 //52

	add r236, r1     => r31
	add r31, r99     => r31

	add r31, r99     => r32
	add r32, r99     => r33
	add r33, r99     => r34
	add r34, r99     => r35
	add r35, r99     => r36
	add r36, r99     => r37
	add r37, r99     => r38
	add r38, r99     => r39
	add r39, r99     => r310
	add r310, r99     => r311
	add r311, r99     => r312
	add r312, r99     => r313
	add r313, r99     => r314

	store r22 => r31
	store r24 => r32
	store r26 => r33
	store r28 => r34
	store r210 => r35
	store r212 => r36
	store r214 => r37
	store r216 => r38
	store r218 => r39
	store r220 => r310
	store r222 => r311
	store r224 => r312
	store r236 => r313
	store r252 => r314

	output 2044 //4
	output 2048 //6
	output 2052 //8
	output 2056 //20
	output 2060 //12
	output 2064 //14
	output 2068 //16
	output 2072 //18
	output 2076 //20
	output 2080 //22
	output 2084 //24
	output 2088 //36
	output 2092 //52


