//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1 1
//OUTPUT: 8 16
//
// Usage before scheduling: ./sim -s 3 -i 1024 1 1 < simple_alternating.i
// Expected output: 8 16
// COMP 412, Lab 3
// 
// Very simple code that should schedule nicely,
// because all of the operations can be alternated.
//
// Expected input:
//    -i 1024 1 1
//
// Expected output:
//    8
//    16
// 
loadI 1024 => r0
loadI 1028 => r1
loadI 3 => r2
loadI 4 => r3
loadI 8 => r4
// Can do the loads much earlier, and get ready
load r0 => r5
add r5, r2 => r6
add r6, r3 => r7
//
load r1 => r9
add r9, r2 => r10
add r10, r3 => r11
add r11, r4 => r12
//
store r7 => r0
store r12 => r1
//
output 1024
//print 8
output 1028
//print 16

