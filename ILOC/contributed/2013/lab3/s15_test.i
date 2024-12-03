//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 2032 4
//OUTPUT: 4
//
// ./sim -s 3 -i 2032 4 < s15_test.i
// Tests schedulers that interpret the ILOC to figure out
// which loads and stores are dependencies.

loadI 2000 => r1
loadI 2004 => r2
loadI 2032 => r3
load r3 => r4
sub r2, r4 => r2
store r3 => r1
store r4 => r2
output 2000
