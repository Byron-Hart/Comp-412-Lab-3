//NAME: Philip Taffet
//NETID: pat2
//SIM INPUT: -i 2048 9830
//OUTPUT: 1025662308 317174120

// My test block implements the CORDIC algorithm for calculating sin and cos of an angle.
// Since these are obviously not integers, I compute using fixed point arithmetic with the last 15 bits fractional.
// The input is 2^15 times an angle in radians from -3pi/2 to 3pi/2.
// The output is 2^30 times the cos, followed by 2^30 times the sin.
// The values are typically only accurate to two or three decimal places, but what can you expect from an instruction set with no branching?



// Load a lookup table
loadI 25736 => r0
loadI 1024 => r1
store r0 => r1
 
loadI 15193 => r0
loadI 1028 => r1
store r0 => r1
 
loadI 8027 => r0
loadI 1032 => r1
store r0 => r1
 
loadI 4075 => r0
loadI 1036 => r1
store r0 => r1
 
loadI 2045 => r0
loadI 1040 => r1
store r0 => r1
 
loadI 1024 => r0
loadI 1044 => r1
store r0 => r1
 
loadI 512 => r0
loadI 1048 => r1
store r0 => r1
 
loadI 256 => r0
loadI 1052 => r1
store r0 => r1
 
loadI 128 => r0
loadI 1056 => r1
store r0 => r1
 
loadI 64 => r0
loadI 1060 => r1
store r0 => r1
 
loadI 32 => r0
loadI 1064 => r1
store r0 => r1
 
loadI 16 => r0
loadI 1068 => r1
store r0 => r1
 
loadI 8 => r0
loadI 1072 => r1
store r0 => r1
 
loadI 4 => r0
loadI 1076 => r1
store r0 => r1
 
loadI 2 => r0
loadI 1080 => r1
store r0 => r1
 
 // initialize some variables 
loadI 2048 => r1
load r1 => r2
loadI 32768 => r3
loadI 1024 => r1
load r1 => r4
loadI 0 => r5
loadI 32768 => r14
loadI 0 => r15
 
 
 //load some constants for convenience 
loadI 2 => r6
loadI 31 => r7
loadI 1 => r8
loadI 4 => r22
loadI 15 => r9
sub r8 , r6 => r10
loadI 51472 => r25
loadI 102944 => r29
 
 
 // modify beta to get it in the right range: [-pi/2, pi/2] 
 // how do we do this without branching? The closest we can get is effectively a sign function. If you take a 2's complement number (which the simulator uses) and right shift it 31 bits, you get -1 if the number was negative and 0 otherwise.

 // is beta in [pi/2, 3pi/2]? If so, check1 = -1 
sub r25 , r2 => r26
rshift r26 , r7 => r26
 // is beta in [-3pi/2, -pi/2]? If so, check2 = -1 
add r25 , r2 => r27
rshift r27 , r7 => r27
 // later, we need to negate if it was in either range 
add r26 , r27 => r28
// change negate from {-1,0} to {-1, 1}
mult r28, r6 => r28
add r28, r8 => r28
 // now correct beta 
mult r26 , r29 => r26
mult r27 , r29 => r27
add r2 , r26 => r2
sub r2 , r27 => r2
 
 
 // this part will be repeated 15 times 
 
 //sigma = sign(beta) 
// shift does sign extension, so tempsign is -1 if sigma was negative and 0 if positive 
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
 
 
// factor = sigma*power2 
mult r12 , r3 => r13
 
 // v = [2^15, -factor; factor, 2^15]*v/2^15 
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
 
mult r13 , r14 => r18
lshift r15 , r9 => r19
 
add r16 , r17 => r14
add r18 , r19 => r15
 
rshift r14 , r9 => r14
rshift r15 , r9 => r15
 
 
// beta = beta - sigma*angle 
mult r12 , r4 => r21
sub r2 , r21 => r2
 
// power2 /= 2 
rshift r3 , r8 => r3
 // j++ 
add r5 , r8 => r5
 
 //angle = angles[j] 
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
 
// j = 1
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
 
 
// j = 2
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 3
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 4
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 5
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 6
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 7
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 8
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 9
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 10
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 11
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 12
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 13
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
// j = 14
rshift r2 , r7 => r11
mult r11 , r6 => r11
add r11 , r8 => r12
mult r12 , r3 => r13
lshift r14 , r9 => r16
mult r13 , r10 => r20
mult r15 , r20 => r17
mult r13 , r14 => r18
lshift r15 , r9 => r19
add r16 , r17 => r14
add r18 , r19 => r15
rshift r14 , r9 => r14
rshift r15 , r9 => r15
mult r12 , r4 => r21
sub r2 , r21 => r2
rshift r3 , r8 => r3
add r5 , r8 => r5
loadI 1024 => r1
mult r22 , r5 => r23
add r1 , r23 => r1
load r1 => r4
 // ENDING SECTION 
loadI 19898 => r24
mult r14 , r24 => r14
mult r15 , r24 => r15
 // negate if necessary 
mult r14 , r28 => r14
mult r15 , r28 => r15
 
 
loadI 4096 => r1
store r14 => r1
output 4096 
loadI 4100 => r1
store r15 => r1
output 4100 
