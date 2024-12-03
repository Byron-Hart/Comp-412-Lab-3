//NAME: Ayush Narayan
//NETID: asn2
//SIM INPUT: -i 1024 0 1 2 
//OUTPUT: 0 2

// Usage  ./sim -s 3 -i 1024 0 1 2 < asn2.i
 

// This block  constructs an address value 1024 and returns the value of the input stored at that location  This is to ensure serialization. 
// This block also tests whether useless stores are optimized 
// This block performs basic memory operations in both serializable and non-serializable sitations. 

// Locations of the input
loadI 1024 => r1 // r1 = 1024
loadI 1028 => r2 // r2 = 1028
loadI 1032 => r3 // r3 = 1032
 
// Load input into registers 
load r1 => r4 // r4 = 0
load r2 => r5 // r5 = 1
load r3 => r6 // r6 = 2

// Address for output 
loadI 2000 => r7 // r7 = 2000

// Artificially construct 1024 
// Make sure ops are serialized.
mult r6, r6 =>r8 // r8 = 4
mult r8, r6 =>r8 // r8 = 8
mult r8, r6 =>r8 // r8 = 16
mult r8, r6 =>r8 // r8 = 32
mult r8, r6 =>r8 // r8 = 64
mult r8, r6 =>r8 // r8 = 128
mult r8, r6 =>r8 // r8 = 256
mult r8, r6 =>r8 // r8 = 512
mult r8, r6 =>r8 // r8 = 1024

// Do a bunch of useless stores
store r4 => r7 // meaningless store
store r5 => r7 // meaningless store
store r6 => r7 // meaningless store
store r4 => r7 // meaningless store
store r5 => r7 // meaningless store
store r6 => r7 // 2 in Mem(2000)
 
// Store 1024 into memory 
loadI 2004 => r9 // r9 = 2004
store r8 => r9 //1024 in Mem(2004)
// Get the value at 1024
load r8 => r10 // r10 = Mem(1024): 0 
// Find a place to output it
loadI 2008 => r11 // r11 = 2008
// Store it in output location
store r10 => r11 // 0 in Mem(2008)
// Output result
output 2008 // 0
output 2000 // 2

