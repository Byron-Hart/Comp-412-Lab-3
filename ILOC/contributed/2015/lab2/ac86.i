//NAME: Arghya Chatterjee
//NETID: ac86
//SIM INPUT: -i 1024 1 2 3 4 5 
//OUTPUT: 91  
//
// COMP 412, Lab 1, block "ac86.i"
//
//
// Example usage: ./sim -i 1024 1 2 3 4 5 < ac86.i
//

loadI  1024 => r20
loadI  1028 => r21
loadI  1032 => r22
loadI  1036 => r23
loadI  1040 => r24
load  r20 => r3
load  r21 => r5
load  r22 => r7
load  r23 => r9
load  r24 => r11
add  r11,r9 => r15
add  r15,r7 => r16
add  r16,r5 => r17
add  r17,r3 => r18
add  r18,r17 => r4
add  r4,r16 => r3
add  r3,r15 => r2
add  r2,r3 => r0
loadI  1080 => r30
store  r0 => r30
output  1080
