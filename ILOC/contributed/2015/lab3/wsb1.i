//NAME: Wilson Beebe
//NETID: wsb1
//SIM INPUT:
//OUTPUT: 16
//DESCRIPTION: Calculates n^2 using the obtuse method of 1+2+...+n-1+n+n-1+...+2+1.
//This block demonstrates this for the small example of n = 4.

loadI   0 => r0 // Running sum which will contain the answer
loadI   1 => r1 // Stores an operand to be added to the running sum
loadI   1 => r2 // Value to increment or decrement by

add r0, r1 => r0 // r0 = 1
add r1, r2 => r1 // increment r1 to 2

add r0, r1 => r0 // r0 = 1 + 2 
add r1, r2 => r1 // increment r1 to 3

add r0, r1 => r0 // r0 = 1 + 2 + 3
add r1, r2 => r1 // increment r1 to 4

add r0, r1 => r0 // r0 = 1 + 2 + 3 + 4
sub r1, r2 => r1 // decrement r1 to 3

add r0, r1 => r0 // r0 = 1 + 2 + 3 + 4 + 3
sub r1, r2 => r1 // decrement r1 to 2

add r0, r1 => r0 // r0 = 1 + 2 + 3 + 4 + 3 + 2
sub r1, r2 => r1 // decrement r1 to 1

add r0, r1 => r0 // r0 = 1 + 2 + 3 + 4 + 3 + 2 + 1 = 16 = 4^2

loadI 2048 => r3
store r0 => r3
output 2048
