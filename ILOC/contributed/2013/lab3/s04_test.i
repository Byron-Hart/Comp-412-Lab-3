//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 5
//OUTPUT: 5 1 2
//
// Original block
// Usage before scheduling: ./sim -s 3 -i 1024 5 < s04_test.i
// A test to check if the scheduler maintains the correct output order
output 1024
loadI 512 => r1
loadI 1 => r2
loadI 2 => r3
loadI 1024 => r4
store r2 => r4
// Store 1 to 1024
output 1024
add r1, r1 => r1
// So it has 1024
store r3 => r1
// Store 2 to 1024
output 1024
