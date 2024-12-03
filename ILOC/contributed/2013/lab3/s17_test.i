//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 2 4 6 4 6 8 6 8 14 48
//
//by Jie Gao
//Usage before scheduling: ./sim -s 3 < s17_test.i
//Test the correctness and efficiency of
//store, output and load dependencies
loadI 1024 => r1
loadI 1028 => r2
loadI 2 => r3
loadI 4 => r4
store r3 => r1
store r4 => r2
output 1024
output 1028
add r3, r4 => r5
mult r3, r4 => r6
store r5 => r1
output 1024
output 1028
store r6 => r2
output 1024
output 1028
load r1 => r7
load r2 => r8
add r7, r8 => r9
mult r7, r8 => r10
output 1024
output 1028
store r9 => r1
store r10 => r2
output 1024
output 1028
