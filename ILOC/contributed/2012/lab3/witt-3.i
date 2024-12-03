//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 0 0
//
// witt 3
// Usage before scheduling: ./sim -s 3 < witt-3.i
// "obviously suboptimal order with precision-timed output"
loadI 1024 => r1
loadI 1028 => r2
load r1 => r1
load r2 => r2
loadI 1032 => r3
load r3 => r4
add r4, r1 => r5
mult r5, r5 => r6
store r6 => r3
output 1032
sub r6, r1 => r7
store r7 => r3
output 1032
