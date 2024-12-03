//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 21 84
//
// This code is essentially two disjoint trees of dependence
// This tests to see if dead operations are still outputted
// to the final code.
// example usage: ./sim -s 3 < s16_test2.i
// 

loadI 3 => r0
loadI 7 => r1
loadI 5 => r100
mult r0, r1 => r2
mult r0, r1 => r3
mult r0, r1 => r4
mult r0, r1 => r5
add r100, r100 => r101
mult r101, r100 => r102
sub r102, r100 => r200
loadI 1024 => r20
loadI 1024 => r21
store r5 => r20
add r4,r2 => r8
output 1024
add r8,r8 => r8
store r8 => r21
output 1024
