//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 3 5 7 9
//OUTPUT: 3 5 7 9
//
// some random load and store, does not change the value with in the block
//Usage before scheduling ./sim -s 3 -i 1024 n n n n < s25_test.i

loadI 1024 => r1
loadI 1028 => r5
loadI 1032 => r3
loadI 1036 => r2
//
load r1 => r10
load r3 => r11
load r2 => r14
load r5 => r21
//
loadI 1044 => r16
loadI 1076 => r7
loadI 1088 => r9
loadI 1096 => r19
//
store r10 => r16
store r21 => r7
store r11 => r9
store r14 => r19
//
output 1044
output 1076
output 1088
output 1096
