//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1
//OUTPUT: 2 3
//
//test the output operation, see if adding the output op in the middle would the answer be correct
//run ./sim -s 3 - i 1024 1 < s61_test.i
//expected output: 2 3
loadI 1024 => r0
load r0 => r1
add r1, r1 => r2
store r2 => r0
output 1024
add r1, r2 => r3
store r3 => r0
output 1024
