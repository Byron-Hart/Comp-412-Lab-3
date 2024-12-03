//NAME: Lisa Huang
//NETID: lh15
//SIM INPUT: -i 1024 -2 
//OUTPUT: 8 8 -2 4
// This tests the internal representation of keeping track of memory
// locations and virtual registers. Checks to see if negative numbers
// can be properly passed around 

loadI 12 => r4
loadI 4 => r8
loadI 8 => r12      // r12 has 8
    
store r4 => r4      // memory location 12 has 12 now
store r8 => r8 
store r12 => r12    

output 8            

// checks to see how it handles loads from empty registers
loadI 2048 => r48
load r48 => r8      // r8 has 0
output 8            // memory location 8 should be unaffected
 
// loads from initalized registers
loadI 1024 => r24
load r24 => r8      // r8 has -2
store r8 => r12     

// should output a negative number  
output 8 

// should output a positive number
mult r8, r8 => r12 // 4 into register 12
store r12 => r12   // 4 into memory location 4
output 4
