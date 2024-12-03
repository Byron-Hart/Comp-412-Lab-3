//NAME: Marshall Wilson
//NETID: mww4
//SIM INPUT: -i 2048 1 2 3 4 5 6 7 8
//OUTPUT:

//Outputs the cross product of two supplied vectors

loadI 2048 => r1
loadI 2052 => r2
loadI 2056 => r3
loadI 2060 => r4
loadI 2064 => r5
loadI 2068 => r6
loadI 2072 => r7
loadI 2076 => r8

load r1 => r9
load r2 => r10
load r3 => r11
load r4 => r12
load r5 => r13
load r6 => r14
load r7 => r15
load r8 => r16

mult r9, r13 => r9
mult r10, r14 => r10
mult r11, r15 => r11
mult r12, r16 => r12

store r9 => r1
store r10 => r2
store r11 => r3
store r12 => r4

output 2048
output 2052
output 2056
output 2060
