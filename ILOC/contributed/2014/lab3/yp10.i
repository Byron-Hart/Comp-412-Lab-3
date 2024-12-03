//NAME: Yuhan Peng
//NETID: yp10
//SIM INPUT: -i 2000 512
//OUTPUT: 1024 4

loadI 1024 => r1
loadI 2000 => r2
load r2 => r3
loadI 1 => r4
lshift r3, r4 => r5
store r1 => r5
output 1024

loadI 1 => r6
loadI 2 => r7
loadI 1000 => r8
mult r6, r6 => r9
mult r6, r7 => r9
mult r7, r7 => r9
store r9 => r8
output 1000
