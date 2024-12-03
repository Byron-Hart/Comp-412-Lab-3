//NAME: Pinghao Qi
//NETID: p12
//SIM INPUT: -i 0 1
//OUTPUT: 1500000 1375000 1437500 1398438 1425781 1405274 1421387 1408295 1419205

// Calculate an approximation of sqrt(2) with a Taylor Series and outputs the approximation
// process. Since there are no floats in ILOC, the result is multiplied by 1000000

// Set a register to store the result, add 1st term
loadI 88 => r88
loadI 1000 => r0
mult r0, r0 => r0
loadI 0 => r99
add r0, r99 => r99

// 2nd term 1/2
loadI 1 => r1
rshift r0, r1 => r1
add r1, r99 => r99

store r99 => r88
output 88

// 3rd term 1/8
loadI 3 => r1
rshift r0, r1 => r1
sub r99, r1 => r99

store r99 => r88
output 88

// 4th term 1/16
loadI 4 => r1
rshift r0, r1 => r1
add r99, r1 => r99

store r99 => r88
output 88

// 5th term 5/128
loadI 5 => r1
mult r1, r0 => r3
loadI 7 => r1
rshift r3, r1 => r3
sub r99, r3 => r99

store r99 => r88
output 88

// 6th term 7/256
loadI 7 => r1
mult r1, r0 => r3
loadI 8 => r1
rshift r3, r1 => r3
add r99, r3 => r99

store r99 => r88
output 88

// 7th term 21/1024
loadI 21 => r1
mult r1, r0 => r3
loadI 10 => r1
rshift r3, r1 => r3
sub r99, r3 => r99

store r99 => r88
output 88

// 8th term 33/2048
loadI 33 => r1
mult r1, r0 => r3
loadI 11 => r1
rshift r3, r1 => r3
add r99, r3 => r99

store r99 => r88
output 88

// 9th term 429/32768
loadI 429 => r1
mult r1, r0 => r3
loadI 15 => r1
rshift r3, r1 => r3
sub r99, r3 => r99

store r99 => r88
output 88

// 10th term 715/65536
loadI 715 => r1
mult r1, r0 => r3
loadI 16 => r1
rshift r3, r1 => r3
add r99, r3 => r99

store r99 => r88
output 88
