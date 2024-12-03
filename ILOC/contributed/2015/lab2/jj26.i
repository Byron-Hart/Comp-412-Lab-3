//NAME: Jiafang Jiang
//NETID: jj26
//SIM INPUT: -i 1024 1 2 3 4 5 6
//OUTPUT: 1 2 6 24 120 720

//Compute the factorial from 1 to 6

loadI 1024 => r1
loadI 1028 => r2
loadI 1032 => r3
loadI 1036 => r4
loadI 1040 => r5
loadI 1044 => r6
loadI 1048 => r7
loadI 1052 => r8
loadI 1056 => r9
loadI 1060 => r10
loadI 1064 => r11
loadI 1068 => r12
load r1 => r1
load r2 => r2
load r3 => r3
load r4 => r4
load r5 => r5
load r6 => r6
store r1 => r7
mult r1, r2 => r2
store r2 => r8
mult r2, r3 => r3
store r3 => r9
mult r3, r4 => r4
store r4 => r10
mult r4, r5 => r5
store r5 => r11
mult r5, r6 => r6
store r6 => r12
output 1048
output 1052
output 1056
output 1060
output 1064
output 1068
