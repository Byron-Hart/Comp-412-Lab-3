//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 2 4
//OUTPUT: 2 4 1034 1040
//
// Usage: ./sim -s 3 -i 1024 2 4 < s20_test.i
// Make sure loadI and outputs are ordered correctly
loadI 1024 => r1
load r1 => r2
// r1 contains 2
output 1024
// should display 2
loadI 1028 => r3
load r3 => r4
// r2 contains 4
output 1028
// should display 4
loadI 1032 => r1
add r1, r2 => r2
// r2 contains 1034
store r2 => r1
// memory location 1032 contains 1034
loadI 1036 => r3
output 1032
// should display 1034
add r3, r4 => r4
// r4 contains 1040
store r4 => r3
// memory location 1036 contains 1040
output 1036
// should display 1040
