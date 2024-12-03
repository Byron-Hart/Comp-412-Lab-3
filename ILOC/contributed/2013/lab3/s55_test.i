//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 8
//OUTPUT: 8 8 8
//
// use example:
// ./sim -s 3 -i 1024 n < s55_test.i.i
//
//  To ensure word alignment, n must be a multiple of four.
//
loadI 1024=>r1
output 1024
load r1=>r1
output 1024
store r1=>r1
output 1024
