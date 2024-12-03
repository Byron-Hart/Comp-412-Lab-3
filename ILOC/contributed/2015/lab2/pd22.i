//NAME: Pu Dong
//NETID: pd22
//SIM INPUT: 
//OUTPUT: 1 2 6 24 120 720

// Output Explanation: Compute n! for n=1 through n=6.

loadI 1 => r1
loadI 2024 => r2 // 1@2024
store r1 => r2

loadI 2 => r2
loadI 2028 => r3 // 2@2028
store r2 => r3

loadI 3 => r3
loadI 2032 => r4 // 3@2032
store r3 => r4

loadI 4 => r4
loadI 2036 => r5 // 4@2036
store r4 => r5

loadI 5 => r5
loadI 2040 => r6 // 5@2040
store r5 => r6

loadI 6 => r5
loadI 2044 => r6 // 6@2044
store r5 => r6


loadI 2024 => r1
load r1 => r1
mult r1, r1 => r11 // 1!


loadI 2028 => r2
load r2 => r2
mult r2, r11 => r12 // 2! = 2 * 1!


loadI 2032 => r3
load r3 => r3
mult r3, r12 => r13 // 3! = 3 * 2!


loadI 2036 => r4
load r4 => r4
mult r4, r13 => r14 // 4! = 4 * 3!


loadI 2040 => r5
load r5 => r5
mult r5, r14 => r15 // 5! = 5 * 4!


loadI 2044 => r6
load r6 => r6
mult r6, r15 => r16 // 6! = 6 * 5!

loadI 1024 => r21
loadI 1028 => r22
loadI 1032 => r23
loadI 1036 => r24
loadI 1040 => r25
loadI 1044 => r26

store r11 => r21
store r12 => r22
store r13 => r23
store r14 => r24
store r15 => r25
store r16 => r26

output 1024
output 1028
output 1032
output 1036
output 1040
output 1044