//NAME: Wanyi Geng
//NETID: wg7
//SIM INPUT:
//OUTPUT: 1024 0 4 0 4 4 4 
// COMP 412, Lab 1, block "wg7.i"
// Example usage: ./sim < wg7.i
// The block is to test the dependence of STORE, LOAD, and OUTPUT
// if the addresses are same

	loadI	1024	=> r2
	store 	r2	    => r2   
	load 	r2	    => r3
	add     r3,r2   => r3
	store   r3      => r3
	output 1024
	output 1028
		
    loadI   4       => r1
	loadI 	1024	=> r4
	loadI 	1028	=> r5
	load    r4      => r6
	load    r5      => r7
	store 	r1	    => r6   
	store   r1      => r7
	output 1024      
	output 1028
	
	loadI  1024     => r2
	loadI  1028     => r3
    add   r1,r2     => r2
    add   r1,r3     => r3  
    store r1        => r2
    store r1        => r3   
	output 1024
	output 1028
	output 1032
	
	
// end of block

