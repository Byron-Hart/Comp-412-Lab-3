//NAME: (Te-Rue) Victoria Eng
//NETID: tve1
//SIM INPUT: -i 1024 0 1 1 
//OUTPUT: 1 2 3 2 1 9

//I learned on /r/eli5 that 1 + 2 + ... + N + N - 1 + ... + 1 = N^2
//so this outputs that for N = 3
// 1 + 2 + 3 + 2 + 1 = 3^2 = 9

loadI 1024 => r0 //0 ./sim sum 
loadI 1028 => r1 //initial 1, to be incremented
loadI 1032 => r2 //used to increment r6
//loadI 1036 => r3
load r0 => r5
load r1 => r6
load r2 => r7
store r6 => r0
output 1024 // 1
add r5, r6 => r5 //0 + 1 = 1
add r6, r7 => r6 // 1 + 1 = 2
store r6 => r0
output 1024 //2

add r5, r6 => r5 //1 + 2 = 3
add r6, r7 => r6 // 2 + 1 = 3
store r6 => r0
output 1024 //3

add r5, r6 => r5 //3 + 3 = 6
sub r6, r7 => r6 // 3 - 1 = 2
store r6 => r0
output 1024 //2

add r5, r6 => r5 //6 + 2 = 8
sub r6, r7 => r6 // 2 - 1 = 1
store r6 => r0
output 1024 //1


add r5, r6 => r5 //8 + 1 = 9
store r5 => r0
output 1024 //9
 