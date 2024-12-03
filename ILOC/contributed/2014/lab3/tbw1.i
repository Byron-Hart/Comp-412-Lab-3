// NAME: Tommy Wilkinson
// NETID: tbw1
//SIM INPUT: 
//OUTPUT: 0 1 2 3 4 5 6 7 8 9 10


// This test block is constructed to specifically show that my scheduler,
// is better on some blocks than the reference scheduler. This test case
// is particularly favorable to schedulers that will propogate constant
// values through to realize that none of the stores actually interfere 
// with each other. Clearly I learned my lesson from lab1 and made a test
// block that I do really well on!


// Let's load some stuff up first

loadI 4 => r1
loadI 1 => r2
// r1 is the increment of our memory location, r2 our value

loadI 1024 => r3
loadI 0 => r4
// r3 is our starting memory and r4 is our starting value

store r4 => r3
output 1024
add r4, r2 => r4
add r3, r1 => r3

store r4 => r3
output 1028
add r4, r2 => r4
add r3, r1 => r3

store r4 => r3
output 1032
add r4, r2 => r4
add r3, r1 => r3

store r4 => r3
output 1036
add r4, r2 => r4
add r3, r1 => r3

store r4 => r3
output 1040
add r4, r2 => r4
add r3, r1 => r3

store r4 => r3
output 1044
add r4, r2 => r4
add r3, r1 => r3

store r4 => r3
output 1048
add r4, r2 => r4
add r3, r1 => r3

store r4 => r3
output 1052
add r4, r2 => r4
add r3, r1 => r3

store r4 => r3
output 1056
add r4, r2 => r4
add r3, r1 => r3

store r4 => r3
output 1060
add r4, r2 => r4
add r3, r1 => r3

store r4 => r3
output 1064
add r4, r2 => r4
add r3, r1 => r3
