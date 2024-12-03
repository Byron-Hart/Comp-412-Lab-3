//NAME: Xilin Liu
//NETID: xal1
//SIM INPUT: -i 1024 1 1 1 0 0 0 0 1
//OUTPUT: 20

// COMP 412 Lab 3, block "xal1.i"
//
// Approximates the volume of a torus given its two relevant radii.
// The algorithm uses the known volume formula:
// (pi * r^2) * (2pi * R)
// where R is the major radius and r is the minor radius.
// Approximates pi^2 with 10.
// 
// The inputs for -i are first, the memadd at which the values 
// are stored in, followed by the major radius, followed by 
// the minor radius. The memadd must be 1024.
// NOTE: The major radius must be strictly greater than 
// the minor radius, or else the output will be nonsensical.
// By definition a torus must have a larger major radius.
// 
// Returns an approximation of volume of the torus.
// 
// Example usage: cat xal1.i | sim -i 1024 10 20 30

// Loads relevant constants and values
loadI 1024 => r0 // R
loadI 1028 => r1 // r
load r0 => r2 // R
load r1 => r3 // r
loadI 10 => r4 // pi^2
loadI 2 => r5 // 2

// Multiplies values together
mult r3, r3 => r6 // r^2
mult r2, r5 => r7 // 2R
mult r6, r7 => r8 // r^2 * 2R
mult r4, r8 => r9 // pi r^2 2pi R AKA volume of torus

// Stores result and prints
loadI 2000 => r10
store r9 => r10 
output 2000
