//NAME: Seth Lauer
//NETID: sjl4
//SIM INPUT: -i 1024 7
//OUTPUT: 460 113092 100842
// Front loaded scheduler with useless operations, important 
// code in the middle, and stores and outputs at the end. 
// Reoraganizes code to minimize nop operations. Beats reference 
// scheduler in case which only uses one memory location
//
// Usage before scheduling: ./sim -s 3 -i 1024 n < sjl4.i
//
loadI 1024 => r0
load r0 => r1
add r1, r1 => r23
add r23, r1 => r24
add r24, r1 => r26
mult r1, r1 => r25
add r25, r1 => r27
mult r23, r1 => r28
mult r24, r1 => r29
loadI 3 => r32
loadI 5 => r31
add r32, r31 => r33
sub r27, r33 => r34
mult r24, r25 => r30
mult r25, r26 => r31
mult r26, r27 => r32
mult r30, r28 => r33
loadI 7 => r2
loadI 4 => r3
add r2, r3 => r7
sub r2, r3 => r8
mult r2, r3 => r4
mult r2, r2 => r5
mult r3, r3 => r6
mult r4, r7 => r13
add r4, r5 => r14
mult r5, r8 => r9
sub r7, r6 => r15
sub r13, r15 => r16
add r16, r9 => r10
mult r4, r5 => r17
mult r5, r6 => r18
mult r6, r7 => r19
mult r1, r17 => r20
mult r4, r5 => r22
sub r17, r18 => r21
mult r21, r19 => r11
add r20, r11 => r12
store r10 => r0
output 1024
store r12 => r0
output 1024
store r33 => r0
output 1024



