//NAME: Xiaoyu Chen
//NETID: xc12
//SIM INPUT: -i 1024 2 0 1 2 3 4 5 6 7
//OUTPUT: 0 1 2 5 12 29 70 169
//Compute the first eight Pell numbers
loadI 1024 => r10
loadI 1028 => r0
loadI 1032 => r1
loadI 1036 => r2
loadI 1040 => r3
loadI 1044 => r4
loadI 1048 => r5
loadI 1052 => r6
loadI 1056 => r7
load r10 => r10
load r0 => r8
load r1 => r9
mult r9, r10 => r9
add r8, r9 => r9
store r9 => r2
load r1 => r8
mult r9, r10 => r9
add r8, r9 => r9
store r9 => r3
load r2 => r8
mult r9, r10 => r9
add r8, r9 => r9
store r9 => r4
load r3 => r8
mult r9, r10 => r9
add r8, r9 => r9
store r9 => r5
load r4 => r8
mult r9, r10 => r9
add r8, r9 => r9
store r9 => r6
load r5 => r8
mult r9, r10 => r9
add r8, r9 => r9
store r9 => r7
output 1028
output 1032
output 1036
output 1040
output 1044
output 1048
output 1052
output 1056