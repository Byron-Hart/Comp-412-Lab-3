//NAME: Morgan Jones
//NETID: mmj4
//SIM INPUT: -i 1024 10
//OUTPUT: 90 720 5040 30240 151200 604800 1814400 3628800

// Computes 10 factorial using an unrolled loop, showing the intermediate steps.
// Tests the proper assignment of live ranges and intermediate results.

loadI 1024 => r0
load r0 => r1
load r0 => r2
loadI 1 => r0
sub r1, r0 => r1
mult r1, r2 => r3
sub r1, r0 => r1
mult r1, r3 => r4
sub r1, r0 => r1
mult r1, r4 => r5
sub r1, r0 => r1
mult r1, r5 => r6
sub r1, r0 => r1
mult r1, r6 => r7
sub r1, r0 => r1
mult r1, r7 => r8
sub r1, r0 => r1
mult r1, r8 => r9
sub r1, r0 => r1
mult r1, r9 => r10
loadI 128 => r12
store r3 => r12
loadI 132 => r12
store r4 => r12
loadI 136 => r12
store r5 => r12
loadI 140 => r12
store r6 => r12
loadI 144 => r12
store r7 => r12
loadI 148 => r12
store r8 => r12
loadI 152 => r12
store r9 => r12
loadI 156 => r12
store r10 => r12
output 128
output 132
output 136
output 140
output 144
output 148
output 152
output 156