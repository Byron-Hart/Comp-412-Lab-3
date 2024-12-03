//NAME: Julia Hossu
//NETID: imh1
//SIM INPUT: 
//OUTPUT: 640

//Test tie-breaking: When equal priority nodes are hit, schedule the one with more immediate dependents first. 

loadI 20 => r1

//Branch 1: less immediate dependents ( 2 ) 
add r1, r1 => r2

//Level 1
add r2, r2 => r4 
add r2, r2 => r5

//Level 2
add r4, r5 => r6

//Level 3
add r6, r6 => r7


//Branch 2: more immediate dependents (4)
add r1, r1 => r3

//Level 1
add r3, r3 => r8
add r3, r3 => r9
add r3, r3 => r10
add r3, r3 => r11

//Level 2
add r8, r9 => r12
add r10, r11 => r13

//Level 3
add r12, r13 => r14

//Merge branches. 
add r7, r14 => r15 

loadI 2000 => r16
store r15 => r16

output 2000

