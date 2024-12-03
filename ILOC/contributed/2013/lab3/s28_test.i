//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 8
//
//COMP 412
//My test block tests loading, storing, adding, and output.

loadI 4 => r1
loadI 4 => r2
loadI 1024 => r3
add r1, r2 => r1
store r1 => r3
output 1024
