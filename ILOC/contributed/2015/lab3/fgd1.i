//NAME: Filip Drozdowski
//NETID: fgd1
//SIM INPUT: -i 1024 1 2 2
//OUTPUT: 6 28 496

// This a modified test block from lab1. The modifications
// introduce multiple useless load and store instructions that
// introduce unnecessary dependencies to the dependence graph.

// Calculates first three even perfect numbers
// using Euclid-Euler theorem : 2^(p-1)*(2^p-1),
// where p is a prime number.

// "In number theory, a perfect number is a positive integer
// that is equal to the sum of its proper positive divisors,
// that is, the sum of its positive divisors excluding the
// number itself (also known as its aliquot sum)." Wikipedia
// https://en.wikipedia.org/wiki/Perfect_number

loadI 1024 => r0
load r0 => r1
loadI 1028 => r2
load r2 => r3
loadI 1032 => r4
load r4 => r5

// A bunch of useless loads
load r0 => r6
load r2 => r8
load r4 => r10

// Calculates first even perfect number
mult r3, r5 => r6
sub r6, r1 => r6
mult r6, r5 => r6
loadI 2048 => r2
store r6 => r2
output 2048

// A bunch of useless stores
loadI 1036 => r10
store r6 => r10
store r4 => r10
store r2 => r10

// Calculates second even perfect number
mult r3, r5 => r7
mult r7, r3 => r7
sub r7, r1 => r7
mult r7, r5 => r7
mult r7, r5 => r7
loadI 2052 => r2
store r7 => r2
output 2052

// More useless loads and stores
load r10 => r8
store r4 => r2

// Calculates third even perfect number
mult r3, r3 => r4
mult r3, r4 => r4
mult r4, r3 => r4
mult r3, r4 => r4
sub r4, r1 => r4
mult r4, r5 => r4
mult r5, r4 => r4
mult r4, r5 => r4
mult r5, r4 => r4
loadI 2056 => r2
store r4 => r2
output 2056
