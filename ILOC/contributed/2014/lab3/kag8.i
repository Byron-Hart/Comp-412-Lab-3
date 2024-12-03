//NAME: Katherine Goulding
//NETID: kag8
//SIM INPUT: -i 1024 0 1
//OUTPUT: 0 1 2 5 12 29 70 169 408 985
//
// Comp 412 Lab #3 - test case
//
// The Pell numbers using 5 registers.
// output statements are interspersed instead of all at the
// end to see implications of such behavior
//

        loadI   4       => r0  
        loadI   2000       => r1  
        loadI   1024    => r2
		load	r2	=> r2		
        loadI   1028    => r3
		load	r3	=> r3 		

// 0
        store r2 => r1 // put 0 in location 2000
        output 2000
// 1
		add r0, r1 => r1  
        store r3 => r1
		output 2004
// 2
		add r2, r3 => r2
		add r2, r3 => r2
		add r0, r1 => r1  
        store r2 => r1
		output 2008
// 5
		add r3, r2 => r3
		add r3, r2 => r3
		add r0, r1 => r1  
        store r3 => r1
		output 2012

// 15
		add r2, r3 => r2
		add r2, r3 => r2
		add r0, r1 => r1  
        store r2 => r1
		output 2016
// 29
		add r3, r2 => r3
		add r3, r2 => r3
		add r0, r1 => r1  
        store r3 => r1
		output 2020

// 70
		add r2, r3 => r2
		add r2, r3 => r2
		add r0, r1 => r1  
        store r2 => r1
		output 2024
// 169
		add r3, r2 => r3
		add r3, r2 => r3
		add r0, r1 => r1  
        store r3 => r1
		output 2028

// 408
		add r2, r3 => r2
		add r2, r3 => r2
		add r0, r1 => r1  
        store r2 => r1
		output 2032
		
// 985
		add r3, r2 => r3
		add r3, r2 => r3
		add r0, r1 => r1  
        store r3 => r1
		output 2036

