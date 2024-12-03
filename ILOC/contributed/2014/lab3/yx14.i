//NAME: Yuxuan Xie
//NETID: yx14
//SIM INPUT: -i 1024 1 2 3 4 5
//OUTPUT: 1 4 9 16 25

// Comp 412 Lab 3, block "yx14.i"
//
// This block computes the square of 5
// input numbers. The block uses a large
// number of disjoint loads, stores, and
// outputs. A scheduler smart enough will
// avoid some redundant IO edges in the
// dependence graph.
//
// Example usage: ./sim -i 1024 1 2 3 4 5 < yx14.i

	loadI	1024	=>	r0
	loadI	4		=>	r10
	loadI	2000	=>	r30
// compute the offset of addresses to store the results (in a counter-intuitive way)
	loadI	0		=>	r20
	loadI	1		=>	r21
	mult	r20, r10=>	r11
	add		r20, r21=>	r20
	mult	r20, r10=>	r12
	add		r20, r21=>	r20
	mult	r20, r10=>	r13
	add		r20, r21=>	r20
	mult	r20, r10=>	r14
	add		r20, r21=>	r20
	mult	r20, r10=>	r15
// calculate the results and store
	load	r0		=>	r1
	mult	r1, r1	=>	r1
	add		r30, r11=>	r7
	store	r1		=>	r7
	
	add		r0, r10	=>	r0
	load	r0		=>	r2
	mult	r2, r2	=>	r2
	add		r30, r12=>	r7
	store	r2		=>	r7
	
	add		r0, r10	=>	r0
	load	r0		=>	r3
	mult	r3, r3	=>	r3
	add		r30, r13=>	r7
	store	r3		=>	r7
	
	add		r0, r10	=>	r0
	load	r0		=>	r4
	mult	r4, r4	=>	r4
	add		r30, r14=>	r7
	store	r4		=>	r7
	
	add		r0, r10	=>	r0
	load	r0		=>	r5
	mult	r5, r5	=>	r5
	add		r30, r15	=>	r7
	store	r5		=>	r7
	
// output the results	
	output	2000
	output	2004
	output	2008
	output	2012
	output	2016

