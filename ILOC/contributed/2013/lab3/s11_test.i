//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 2 0
//
//This block test breaktie, the first priority is the total delay, the second priority is the number of descendants. 
//Thus even through store and add has the same total delay, add is schedule priority to store because it has more descendants.
//usage: ./sim -s 3 < s11_test.i no extra input necessary

loadI 1024 => r11
loadI 1028 => r12
loadI 2 => r1
store r1 => r11
add r1, r1 => r2
sub r2, r2 => r3
lshift r3, r3 => r4
rshift r4, r4 => r5
add r5, r5 => r6
store r6 => r12
output 1024
output 1028


