//NAME: Jonathan Sharman
//NETID: jps12
//SIM INPUT:
//OUTPUT: 16 100 324

// Contains three independent computations which could be interleaved to reduce
// impact of store/multiply latency.

loadI 1024 => r10
loadI 1028 => r20
loadI 1032 => r30

loadI 1 => r1
loadI 2 => r2
loadI 3 => r3
loadI 4 => r4
loadI 5 => r5
loadI 6 => r6

mult r1, r4 => r7
mult r7, r7 => r7

mult r2, r5 => r8
mult r8, r8 => r8

mult r3, r6 => r9
mult r9, r9 => r9

store r7 => r10
store r8 => r20
store r9 => r30

output 1024
output 1028
output 1032
