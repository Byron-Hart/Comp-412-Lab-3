//NAME: John "Jack" O'Connor
//NETID: jjo1
//SIM INPUT:
//OUTPUT: 128626604

//Tests every instruction except "nop" which breaks
//lab3_ref apparently

loadI 1024 => r99
loadI 93 => r0
loadI 94 => r1
loadI 77 => r2
loadI 15 => r3
loadI 5 => r4
loadI 16 => r10
add r0,r0 => r5
rshift r1,r5 => r6
lshift r2,r3 => r7
mult r5,r7 => r5
sub r6,r3 => r1
sub r99,r10 => r10
store r1 => r10
load r10 => r8
sub r8,r3 => r7
lshift r1,r1 => r1
mult r3,r4 => r3
add r1,r1 => r1
add r1,r2 => r1
mult r1,r3 => r1
sub r1,r4 => r1
lshift r1,r5 => r1
rshift r1,r6 => r1
add r1,r7 => r1
mult r1,r8 => r1
store r1 => r99
output 1024
