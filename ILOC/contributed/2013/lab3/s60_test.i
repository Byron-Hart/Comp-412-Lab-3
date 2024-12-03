//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1 1
//OUTPUT: 1 1 1 0 0 0 0 0
//
// Comp 412 Lab #3 - s60_test.i
// 
// Some random computation with overriding loads and stores
//
// Expects input values at 1024 and 1028 (for example, 1 and 1)
// Usage before scheduing ./sim -s 3 -i 1024 n n < s60_test.i
//
loadI	1024	=> r1
loadI	1028	=> r2
load r1 => r3
load r2 => r4

add r3, r4 => r5
loadI 4 => r6
mult r5, r6 => r5
add r1, r5 => r5

store r3 => r5
load r5 => r6
store r4 => r5
store r6 => r2

output 1024
output 1028
output 1032
output 1036
output 1040
output 1044
output 1048
output 1052
