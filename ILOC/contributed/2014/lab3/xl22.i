//NAME: Xinxing Liu
//NETID: xl22
//SIM INPUT: -i 2048 2 3 4
//OUTPUT: 353

// To calculate a^4 + b^4 + c^4, where a, b, and c are integers that are pre-stored in the memory. 
//
// Example usage: ./sim -i 2048 2 3 4 < xl22.i
//
	loadI 	2048 	=> r0
	load	r0	=> r1
	mult	r1,r1	=> r2
	mult	r2,r2	=> r3
	store	r3	=> r0

	loadI 	2052 	=> r0
	load	r0	=> r1
	mult	r1,r1	=> r2
	mult	r2,r2	=> r3
	store	r3	=> r0

	loadI 	2056 	=> r0
	load	r0	=> r1
	mult	r1,r1	=> r2
	mult	r2,r2	=> r3
	store	r3	=> r0

	loadI	2048	=> r0
	load	r0	=> r1

	loadI	2052	=> r0
	load	r0	=> r2
	add	r1,r2	=> r1

	loadI	2056	=> r0
	load	r0	=> r2
	add	r1,r2	=> r1

	loadI	2060	=> r0
	store	r1	=> r0
	output	2060
//
