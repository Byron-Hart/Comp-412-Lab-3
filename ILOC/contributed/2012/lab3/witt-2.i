//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 0
//
// Witt 2
// Usage before scheduling: ./sim -s 3 < witt-2.i
// "Parallelization and dependences, simple edition"
loadI 1024 => r0
loadI 1028 => r1
loadI 1032 => r3
load r0 => r0
load r1 => r1
lshift r0, r1 => r4
mult r4, r0 => r5
store r5 => r3
output 1032
