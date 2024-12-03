//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1 2 3
//OUTPUT: 7
//
//This will test if the rename is right
//-i 1024 1 2 3 
loadI 1024 => r1
load r1 => r1
add r1,r1 => r1
loadI 1028 => r2
load r2 => r2
mult r1,r2 => r1
loadI 1032 => r3
load r3 => r2
add r1,r2 => r1
store r1 => r3
output 1032

