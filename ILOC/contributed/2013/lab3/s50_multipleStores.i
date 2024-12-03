//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1 2 3 4 5
//OUTPUT: 1048 2 1025 2
//
//s50_multipleStores.i
//brief: 
//1. test mutiple stores, which appears at various scenarios, such as 
// store at memory address directly  get from loadI, store at memory //address get from computation and store some value directly get from loadI
// 2. test the dependency between load, store and output;
// simulator: ./sim -s 3 -i 1024 1 2 3 4 5 <  s50_multipleStores.i

     loadI   1024	=>	r0
     load 	 r0	=>	r4
     loadI   1028	=>	r1
     load 	 r1 	=>	r5
     loadI   1032    => r2
     load 	 r2 	=> 	r6
     loadI   1036    => r3
	 load	r3	=> r3

	 add r0, r4 => r7
	 store r7 => r0

	 loadI 20 => r8
	 add r1, r8 => r8
	 store r8 => r8
	 output 1048

	 store r5 => r8
	 output 1048

	 load r8 => r9
	 store r9 => r2

	 output 1024
	 output 1032

