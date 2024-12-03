//NAME: Bing Xue
//NETID: bx3
//SIM INPUT: -i 1024 4 8 12
//OUTPUT: 4 8 4 8 4  
//
// This test block tests the usage of intertwined memory ops that use the same or the different memory addrs
// It is intended to test if the scheduler computes values from loadIs correctly and associate them with the 
// correct mem ops to eliminate IO edges

//intertwined loadI and load that can be packed in 6 cycles
loadI 1024 => r1
load r1 => r2
loadI 1028 => r3
load r3 => r4
loadI 4 => r5
loadI 4 => r6

// intertwined arithop and store that depends on the previous loads
add r1, r4 => r7
store r2 => r7 
add r3, r4 => r8 
store r4 => r8 

output 1032
output 1036

//loadI with addr that differ from previous
loadI 1048 => r11
loadI 1056 => r12
loadI 1064 => r13
load r13 => r8
load r12 => r7
load r11 => r1

//intertwined load and store 
store r1 => r11
store r7 => r12
store r8 => r13


output 1024
output 1028
output 1032



