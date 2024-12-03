//NAME: Xiaoyu Chen
//NETID: xc12
//SIM INPUT: -i 2000 251 10
//OUTPUT: 100 100
//Efficiency of this block is HARD to improve through scheduling

loadI 2000 => r1
load r1 => r2
loadI 4 => r3
mult r2, r3 => r4
loadI 1 => r5
mult r4, r5 => r6
loadI 2004 => r7
load r7 => r7
store r7 => r4
load r4 => r8
store r7 => r6
load r6 => r10
mult r8, r10 => r11
store r11 => r4
load r6 => r12
store r12 => r1
output 2000
output 1004