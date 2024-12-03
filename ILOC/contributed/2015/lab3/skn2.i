//NAME: Sarah Nyquist
//NETID: skn2
//SIM INPUT: 
//OUTPUT: 88 440 408 56
// This test block tests that the order of outputs and the dependencies between
// store and output are maintained
loadI 8 => r1
loadI 16 => r2
loadI 24 => r3
loadI 32 => r4
loadI 1 => r5
add r1,r2 => r6
mult r2,r3 => r7
add r3,r4 => r8
mult r4,r5 => r9
store r9 => r6
store r6 => r7
store r7 => r8
store r8 => r9
load r6 => r13
load r7 => r10
load r8 => r11
load r9 => r12
add r13,r10 => r16
add r10,r11 => r15
add r11,r12 => r14
add r12,r13 => r17
sub r14,r17 => r18
store r17 => r18
output 352
sub r15,r16 => r19
store r14 => r19
output 352
add r16,r14 => r21
store r15 => r21
output 496
add r17,r15 => r20
store r16 => r20
output 496
