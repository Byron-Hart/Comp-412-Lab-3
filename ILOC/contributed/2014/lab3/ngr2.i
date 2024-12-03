//NAME: Navaneeth Ravindranath
//NETID: ngr2
//SIM INPUT: -i 1024 10
//OUTPUT: 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0

//DESCRIPTION: Takes as input an integer n in the range 0 <= n <= 16.
//Prints a list of 16 numbers of which the first n are 1 and the
//remaining (16 - n) are 0.

loadI 0 => r0
loadI 1 => r1
loadI 2 => r2
loadI 31 => r3
loadI 32 => r4
loadI 1024 => r5
loadI 1028 => r6

load r5 => r7
lshift r1, r7 => r8
sub r8, r1 => r9
sub r4, r7 => r10
lshift r9, r10 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028

mult r11, r2 => r11

rshift r11, r3 => r12
sub r0, r12 => r13
store r13 => r6
output 1028
