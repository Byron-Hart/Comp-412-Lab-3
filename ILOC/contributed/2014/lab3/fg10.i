//NAME: Feng Gu
//NETID: fg10
//SIM INPUT: -i 2048 5 1 4 1 3
//OUTPUT: 0 5 15 415 1415 31415

// Perform a digit-wise addition over the five numbers stored in memory location starting at 2048.
// Print out the intermediate results as the result accumulates.

	loadI 1       => r1
	loadI 4       => r4
	loadI 10      => r10
	loadI 0       => r8    // r8 is the result being accumulated
	loadI 3200    => r9
	store r8      => r9
	output 3200

	// res += first digit * 1
	loadI 2048    => r2 
	load  r2      => r6 
	mult  r1, r6  => r6
	add   r8, r6  => r8
	store r8      => r9
	output 3200
	
	// res += second digit * 10
	add   r2, r4  => r2
	mult  r1, r10 => r1
	load  r2      => r6 
	mult  r1, r6  => r6
	add   r8, r6  => r8
	store r8      => r9
	output 3200

	// res += third digit * 100
	add   r2, r4  => r2
	mult  r1, r10 => r1
	load  r2      => r6 
	mult  r1, r6  => r6
	add   r8, r6  => r8
	store r8      => r9
	output 3200

	// res += fourth digit * 1000
	add   r2, r4  => r2
	mult  r1, r10 => r1
	load  r2      => r6 
	mult  r1, r6  => r6
	add   r8, r6  => r8
	store r8      => r9
	output 3200

	// res += fifth digit * 10000
	add   r2, r4  => r2
	mult  r1, r10 => r1
	load  r2      => r6 
	mult  r1, r6  => r6
	add   r8, r6  => r8
	store r8      => r9
	output 3200
