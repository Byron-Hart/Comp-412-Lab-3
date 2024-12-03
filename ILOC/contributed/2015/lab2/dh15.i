//NAME: Daniel Hsu
//NETID: dh15
//SIM INPUT:-i 1024 10 20
//OUTPUT:225
//Takes as input two numbers, in this example 10, 20
//and outputs the square of the average of the 2 numbers.
//Tests for general correctness 

loadI 1024 => r0
load r0 => r1
loadI 1028 => r3
load r3 => r4
add r1,r4 => r4
loadI 1 => r5
rshift r4,r5 => r6
mult r6,r6 => r7
store r7 => r0
output 1024



