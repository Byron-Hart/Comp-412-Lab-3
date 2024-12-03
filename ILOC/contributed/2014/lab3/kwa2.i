//NAME: Kyle Adams
//NETID: kwa2
//SIM INPUT: -i 1024 2 11
//OUTPUT: 11 13 19 29 43 61 83 109 139 173 211 

// This test code implements the formula 2n^2+11, 
// which generates primes for the values of n from 
// 0 to 10 (a total of 11 primes).

loadI 1024 => r0
loadI 1028 => r1
loadI 1032 => r2

load r0 => r0   // 2
load r1 => r1   // 11
loadI 0 => r3   // n
loadI 1 => r4   // inc

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 0

add r3,r4 => r3

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 1

add r3,r4 => r3

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 2

add r3,r4 => r3

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 3

add r3,r4 => r3

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 4

add r3,r4 => r3

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 5

add r3,r4 => r3

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 6
add r3,r4 => r3

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 7
add r3,r4 => r3

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 8
add r3,r4 => r3

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 9
add r3,r4 => r3

mult r3,r3 => r5
mult r0,r5 => r5
add r5,r1 => r5

store r5 => r2
output 1032     // prime 10


