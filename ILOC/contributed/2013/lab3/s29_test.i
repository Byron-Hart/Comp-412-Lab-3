//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 20
//
// Expected output: 20
// Usage before scheduling: ./sim -3 < s29_test.i
loadI 5 => r1
loadI 3 => r2
loadI 1024 => r3
mult r1, r2 => r4
store r1 => r3
add r1, r4 => r5
store r5 => r3
output 1024
