//NAME: Hongyu Li
//NETID: hl33
//SIM INPUT: -i 1024 4 8
//OUTPUT: 4 8 1024 8
//
//hl33.i
//
output 1024
output 1028

loadI 1024 => r1
loadI 1028 => r2
load r1 => r3
load r2 => r4
add r1, r3 => r5
store r5 => r1
sub r5, r3 => r6
store r6 => r1
output 1024
output 1028

