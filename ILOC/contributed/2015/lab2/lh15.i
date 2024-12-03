//NAME: Lisa Huang
//NETID: lh15
//SIM INPUT: -i 1024 2 
//OUTPUT: 10

// Comp 412 Lab 1, block "lh15.i"
// 
// Converts 0, 1, or 2 to binary
//
// Example usage: ./sim -i 1024 2 < lh15.i

loadI 3000 => r3000 // holds the answer

loadI 1 => r1 		// constant factor: 1
loadI 10 => r10 	// constant factor: 10 

loadI 1024 => r0 	// loads the given number into r0
load r0 => r0 
 
loadI 1032 => r3 	 
rshift r0, r1 => r3  
 
mult r3,r10  => r4  // multiply remainder by 10 

add r1, r1 => r1
mult r1, r3 => r6    
sub r0, r6 => r7     

load r3000 => r5   
add r4, r7 => r4    
add r4,r5 => r4		 

store r4 => r3000 

output 3000 