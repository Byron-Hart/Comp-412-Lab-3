//NAME: Zhouhan Chen
//NETID: zc12
//SIM INPUT:
//OUTPUT: 1064 1064 4 10

// Factoring a Sum of Cubes
// This test block tests the equation below
// a^3 + b^3 = (a + b)(a2 – a*b + b2)

// initialize a and b
loadI 10 => r1
loadI 4 => r11

// initialize memory addresses
loadI 1024 => r990
loadI 1028 => r991
loadI 1032 => r992
loadI 1036 => r993

// a^3 (increment 10 ten times, then increment 100 ten times)
add r1, r1 => r61
add r61, r1 => r62
add r62, r1 => r61
add r61, r1 => r62
add r62, r1 => r61
add r61, r1 => r62
add r62, r1 => r61
add r61, r1 => r62
add r62, r1 => r2

add r2, r2 => r71
add r71, r2 => r72
add r72, r2 => r73
add r73, r2 => r74
add r74, r2 => r75
add r75, r2 => r76
add r76, r2 => r77
add r77, r2 => r78
add r78, r2 => r3

// b^3
mult r11, r11 => r12
mult r12, r11 => r13

// a^3 + b^3
add r3, r13 => r14

// a + b
add r1, r11 => r41

// a^2, store a into memory
store r1 => r990
mult r1, r1 => r42

// b^2, store b into memory
store r11 => r991
mult r11, r11 => r43

// a*b, load a, b back to registers
load r990 => r44
load r991 => r45
mult r44, r45 => r46

// (a^2 – a*b + b^2)
sub r42, r46=>  r47
add r47, r43=>  r48

// (a + b)(a2 – ab + b2)
mult r41, r48=>  r49

// store a^3 + b^3
store r14 =>  r992

// store (a + b)(a2 – ab + b2)
store r49 =>  r993

// store a(10) into memory again
load r990 => r994
store r994 => r14

// store b(4) into memory again
load r991 => r995
store r995 => r990

output 1032
output 1036
output 1024
output 1064