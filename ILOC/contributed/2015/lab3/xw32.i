//NAME: Xiongfei Wei
//NETID: xw32
//SIM INPUT: -i 1024 0 1 1 
//OUTPUT: 2 6
// This test block compute the integers given two binary number: 10, 110.

loadI 1024 => r0
load r0 => r1
loadI 1028 => r2
load r2 => r3
loadI 1032 => r4
load r4 => r5

loadI 1 => r6
loadI 2 => r7
loadI 4=>r8

mult r1, r6 => r9
mult r3, r7 => r10
add r9, r10 => r11
loadI 1036 => r12
store r11 => r12
output 1036

mult r5, r8=> r13
add r13, r11=>r14
loadI 1040=>r15
store r14=>r15
output 1040
