//NAME: Jie Liao
//NETID: jl98
//SIM INPUT: -i 1024 10
//OUTPUT: 10 10 5 8 12 16

loadI 1024 => r1
loadI 4 => r2
loadI 2048 => r3
loadI 8 => r4
load r1 => r5
store r4 => r3
add r2, r1 => r6
add r2, r4 => r7
sub r3, r2 => r8
store r7 => r8
store r5 => r6
loadI 5 => r10
add r2, r6 => r11
add r2, r7 => r12
sub r8, r2 => r13
store r12 => r13
store r10 => r11
load r6 => r14
output 1024
output 1028
output 1032
output 2048
output 2044
output 2040
 


