//NAME: Victoria Eng
//NETID: tve1
//SIM INPUT: -i 1024 2 4 9
//OUTPUT: 405 
//
//This test block is a variation on a mental math game I would play as a kid in the car.
//Given a number abc, it calculates (((((a*b)+a)*b)+b)*c)+c)
//(The sim input is 249, a highway by my house.)
//
 
loadI 1024 => r0
loadI 1028 => r1
loadI 1032 => r2
load r0 => r10
load r1 => r11
load r2 => r12
mult r10,r11 => r3
add r3,r10 => r4
mult r4,r11 => r5
add r5, r11  => r6 //
mult r6, r12 => r5 //
add r5, r12 =>r5 //
store r5 => r0
output 1024
