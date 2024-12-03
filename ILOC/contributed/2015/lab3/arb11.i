//NAME: Aaron Braunstein
//NETID: arb11
//SIM INPUT: -i 2000 1 3 5 6 4 8
//OUTPUT: -7
//
// Usage before scheduling: ./sim -s 3 -i 2000 1 3 5 6 4 8 <  arb11.i
//
// This block solves the following: 1 - (3 - (5 - (6 - (4 - (8)))))
// The program has been designed to use a lot of stores and loads to
// test the user's graph simplification implementation

loadI 2000 => r1 // r1: 2000
load r1 => r2 // r2: 1

loadI 2004 => r3 // r3: 2004
load r3 => r4 // r4: 3

loadI 2016 => r5 // r5: 2016
load r5 => r6 // r6: 4

loadI 2000 => r9 // r9: 2000
loadI 24 => r10 // r10: 24
add r9, r10 => r10 // r10: 2024

loadI 2020 => r7 // r7: 2020
load r7 => r8 // r8: 8

sub r6, r8 => r6 // r6: -4
store r6 => r10 // mem[2024]: -4

loadI 4 => r11 // r11: 4
add r10, r11 => r12 // r12: 2028

sub r5, r11 => r13 // r13: 2012
load r13 => r14 // r14: 6

load r10 => r15 // r15: -4
sub r14, r15 => r16 // r16: 10
store r16 => r12 // mem[2028]: 10

loadI 2008 => r17 // r17: 2008
load r17 => r17 // r17: 5
load r12 => r18 // r18: 10

sub r17, r18 => r19 // r19: -5
store r19 => r12 // mem[2028]: -5

sub r4, r19 => r20 // r20: 8
store r20 => r10 // mem[2024]: 8

load r10 => r21 // r21: 8
sub r2, r21 => r2 // r2: -7
store r2 => r12 // mem[2028]: -7

output 2028 // output -7
