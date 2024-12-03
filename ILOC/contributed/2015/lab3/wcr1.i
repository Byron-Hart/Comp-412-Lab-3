//NAME: Weston Ruths
//NETID: wcr1
//SIM INPUT: -i 2048 4 100 101 102
//OUTPUT: 100 101 102
//
// COMP 412, Lab 3, block "wcr1.i"
//
// Example usage: ./sim -s 1 -i 2048 3 100 101 102 < wcr1.i
//
// This code takes an array and copies it to a different part of memory.
// The original array starts at memory location at 2048.
//
// The first element is the length of the array. This lets us know the
// end of the array and helps us copy it into neighboring memory locations.
//
// First we find the length of the array and get the distance from the adjacent
// free memory.
loadI 2048 => r0
load r0 => r1
add r1, r1 => r2
add r1, r2 => r2
add r1, r2 => r2
// Now we copy over the elements
// Length element
loadI 2048 => r9
add r9, r2 => r19
load r9 => r9
store r9 => r19

// First element
loadI 2052 => r10
add r10, r2 => r20
load r10 => r10
store r10 => r20

// Second element
loadI 2056 => r11
add r11, r2 => r21
load r11 => r11
store r11 => r21

// Third element
loadI 2060 => r12
add r12, r2 => r22
load r12 => r12
store r12 => r22

// Now we shall output our newly copied array
output 2068
output 2072
output 2076
