//NAME: Marshall Wilson
//NETID: mww4
//SIM INPUT: -i 2048 1 8
//OUTPUT: 40320
//Computes 8 factorial

loadI 2048 => r10
loadI 2052 => r11

load r10 => r0
load r11 => r1

sub r1, r0 => r2
sub r2, r0 => r3
sub r3, r0 => r4
sub r4, r0 => r5
sub r5, r0 => r6
sub r6, r0 => r7

mult r0, r4 => r0
mult r1, r5 => r1
mult r2, r6 => r2
mult r3, r7 => r3

mult r0, r1 => r0
mult r2, r3 => r1

mult r0, r1 => r0

store r0 => r10

output 2048
