//NAME: Hongfa Zeng
//NETID: hz30
//SIM INPUT: -i 1000 8 88 888 8888 88888 888888
//OUTPUT: 993708
//
// This block is used to test how well the allocator perform when most of values to be
// spilled are clean. In this case, the allocator should perform rematerialization instead
// of restoring values from memory, which saves time.

loadI 1000 => r1
loadI 1004 => r2
loadI 1008 => r3
loadI 1012 => r4
loadI 1016 => r5
loadI 1020 => r6

load r1 => r7
load r2 => r8
load r3 => r9
load r4 => r10
load r5 => r11
load r6 => r12

loadI 0 => r20

add r1, r7 => r13
add r2, r8 => r14
add r3, r9 => r15
add r4, r10 => r16
add r5, r11 => r17
add r6, r12 => r18

add r13, r20 => r21
add r14, r21 => r22
add r15, r22 => r23
add r16, r23 => r24
add r17, r24 => r25
add r18, r25 => r26


loadI 1024 => r13
store r26 => r13

output 1024