//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 1
//
// Witt 1
// Usage before scheduling: ./sim -s 3 < witt-1.i
// Simplest possible test -- does it work?
loadI 1024 => r2
load r2 => r1
loadI 1 => r0
add r0, r1 => r3
store r3 => r2
output 1024
