//NAME: Franco Bettati
//NETID: fdb1
//SIM INPUT:
//OUTPUT: 60000
//
// This block contains registers that are defined, but not used.
//
// This test case checks loadI relocation, as well as automatic register renaming.
//
	loadI		500 		=> 		r5 // Check if Reg. 1-4 auto-define.
	nop 								   
	loadI		400 		=> 		r4 // Fill
	loadI		300 		=> 		r3 // In
	loadI 		200 		=> 		r2 // Other
	loadI 		300000 		=> 		r1 // Registers
	nop 								   // LoadI calls either moved or spilled.
	  //	load 		r5 			=> 		r2 // Removed loadI call to r2?
	mult 		r2 , r3 	=> 		r0004 // Zeros in register name.
	store 		r4 			=> 		r1
	nop 
	output		300000

