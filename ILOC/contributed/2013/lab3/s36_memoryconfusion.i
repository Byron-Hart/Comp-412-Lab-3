//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 5
//
// Comp 412 Lab #3 - s36_memoryconfusion.i
// 
// Makes sure that loads are dependent on the right locations.
//
// Usage before scheduing ./sim -s 3 < s36_memoryconfusion.i
//
loadI	1024	=> r1
loadI 4 => r2
add r1, r2 => r3
store r2 => r3

// this code needs to run after the above code, so the output is "5"
loadI	1028	=> r5
load r5 => r6
loadI 1 => r7
add r6, r7 => r8
store r8 => r5
output 1028
