//NAME: Marie Hoeger
//NETID: meh9
//SIM INPUT:
//OUTPUT: 122522400 122522400
//
// This block first calculates 10 factorial, and then calculates
// 10 factorial again while doing some random calculations
// between.
//

loadI 1 => r0
loadI 2 => r1

loadI 100 => r21
loadI 20 => r23
loadI 10 => r40

nop 
nop 
nop 

// Calculate the "fibonacci factorial" of 10
mult r0, r1 => r20
add r0, r1 => r2
mult r0002, r20 => r21
add r1, r2 => r3
mult r3, r21 => r22
add r2, r3 => r4
mult r4, r22 => r23
add r3, r4 => r5
mult r5, r23 => r24
add r4, r5 => r6
mult r6, r24 => r25
add r5, r6 => r7
mult r7, r25 => r26
add r6, r7 => r8
mult r8, r26 => r27

loadI 2048 => r80
store r27 => r80
output 2048

nop 
nop 
nop 

// Calculate the "fibonacci factorial" of 10 again with other random calculations
mult r0, r1 => r20
add r0, r1 => r2

loadI 34 => r100
loadI 2 => r101
lshift r100, r101 => r100
lshift r101, r0 => r100

mult r0002, r20 => r21
add r1, r2 => r3
mult r3, r21 => r22
add r2, r3 => r4
mult r4, r22 => r23
add r3, r4 => r5
mult r5, r23 => r24

add r100, r101 => r50
add r50, r1 => r2
add r2, r22 => r3

add r4, r5 => r6
mult r6, r24 => r25
add r5, r6 => r7
mult r7, r25 => r26
add r6, r7 => r8
mult r8, r26 => r27

loadI 2052 => r75
store r27 => r75
output 2052
