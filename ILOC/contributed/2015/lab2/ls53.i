//NAME: Li Shen
//NETID: ls53
//SIM INPUT: 
//OUTPUT: 1 1 2 3 5 8 13 21 34 55

// output the first 10 Fibonacci numbers

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

loadI 1 => r11          // get the first Fibonacci number
loadI 1 => r12          // get the second Fibonacci number
add r11, r12 => r13     // get the third Fibonacci number
add r12, r13 => r14     // get the fourth Fibonacci number
add r13, r14 => r15     // get the fifth Fibonacci number
add r14, r15 => r16     // get the sixth Fibonacci number
add r15, r16 => r17     // get the seventh Fibonacci number
add r16, r17 => r18     // get the eighth Fibonacci number
add r17, r18 => r19     // get the nineth Fibonacci number
add r18, r19 => r20     // get the tenth Fibonacci number

store r11 => r1
store r12 => r2
store r13 => r3
store r14 => r4
store r15 => r5
store r16 => r6
store r17 => r7
store r18 => r8
store r19 => r9
store r20 => r10

output 1024
output 1028
output 1032
output 1036
output 1040
output 1044
output 1048
output 1052
output 1056
output 1060