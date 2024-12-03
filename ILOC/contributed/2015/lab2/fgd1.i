//NAME: Filip Drozdowski
//NETID: fgd1
//SIM INPUT: -i 1024 1 2 2
//OUTPUT: 6 28 496 8128

// Calculates first four even perfect numbers
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

// Calculates first even perfect number
mult r3, r3 => r4
sub r4, r1 => r0
mult r0, r5 => r6

// Calculates second even perfect number
mult r3, r3 => r0
mult r3, r0 => r4
sub r4, r1 => r0
mult r0, r5 => r4
mult r5, r4 => r7

// Calculates third even perfect number
mult r3, r3 => r4
mult r3, r4 => r0
mult r0, r3 => r4
mult r3, r4 => r0
sub r0, r1 => r4
mult r4, r5 => r0
mult r5, r0 => r4
mult r4, r5 => r0
mult r5, r0 => r8

// Calculates fourth even perfect number
mult r3, r3 => r0
mult r3, r0 => r4
mult r4, r3 => r0
mult r3, r0 => r4
mult r4, r3 => r0
mult r0, r3 => r4
sub r4, r1 => r0
mult r0, r5 => r4
mult r5, r4 => r0
mult r0, r5 => r4
mult r5, r4 => r0
mult r0, r5 => r4
mult r5, r4 => r9

// Store the results
loadI 2048 => r2
store r6 => r2
loadI 2052 => r2
store r7 => r2
loadI 2056 => r2
store r8 => r2
loadI 2060 => r2
store r9 => r2

// Outputs the results in ascending order
output 2048
output 2052
output 2056
output 2060
