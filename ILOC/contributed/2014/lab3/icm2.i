//NAME: Ian Mauzy
//NETID: icm2
//SIM INPUT: -i 2000 1 3
//OUTPUT: 9 27 81 243

//Powers of 3, using lshift and add.

loadI 2004 => r0
load r0 => r1
loadI 4 => r2
sub r0, r2 => r0
load r0 => r3
loadI 1024 => r4

//3^2: 9
lshift r1, r3 => r10
add r1, r10 => r10
store r10 => r4

//3^3: 27
lshift r10, r3 => r11
add r10, r11 => r11
add r4, r2 => r4
store r11 => r4

//3^4: 81
lshift r11, r3 => r12
add r11, r12 => r12
add r4, r2 => r4
store r12 => r4

//3^5: 243
lshift r12, r3 => r13
add r12, r13 => r13
add r4, r2 => r4
store r13 => r4

output 1024
output 1028
output 1032
output 1036
