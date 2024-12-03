
//NAME: Jesse Kimery
//NETID: jbk2
//SIM INPUT:
//OUTPUT:1 1 2 5 14 42 132 429 1430 4862 16796 58786 208012 742900 2674440 9694845 35357670 129644790 477638700 1767263190

//This block requires no user input.  It prints the first 20 Catalan numbers.
//These numbers have many applications in combinatorics; for instance, the
//nth Catalan number is the number of full binary trees with n + 1 leaves
//and the number of valid ways of matching n pairs of open and closed
//parentheses.
//
//The Catalan numbers are often written as C_n = 1/(n + 1) (2n choose n).
//In this file, I use the recurrence 
//          C_(n + 1) = sum from 0 to n of C_i * C_(n - i).
//
//The design stores the Catalan numbers to memory as they are computed, then
//loads them in the recurrence.  Thus, this program includes many restricted
//operations (load, store, and mult); however, the memory addresses are 
//computed by loadIs, so performance improves significantly with 
//constant tracking.

loadI 0 => r0
// Storing the 0th Catalan number
loadI 1 => r1
store r1 => r0

// Calculating Catalan number 1
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 1
loadI 4 => r0
store r1 => r0

// Calculating Catalan number 2
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 2
loadI 8 => r0
store r1 => r0

// Calculating Catalan number 3
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 3
loadI 12 => r0
store r1 => r0

// Calculating Catalan number 4
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 4
loadI 16 => r0
store r1 => r0

// Calculating Catalan number 5
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 5
loadI 20 => r0
store r1 => r0

// Calculating Catalan number 6
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 6
loadI 24 => r0
store r1 => r0

// Calculating Catalan number 7
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 7
loadI 28 => r0
store r1 => r0

// Calculating Catalan number 8
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 8
loadI 32 => r0
store r1 => r0

// Calculating Catalan number 9
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 9
loadI 36 => r0
store r1 => r0

// Calculating Catalan number 10
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 36 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 36 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 10
loadI 40 => r0
store r1 => r0

// Calculating Catalan number 11
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 40 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 36 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 36 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 40 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 11
loadI 44 => r0
store r1 => r0

// Calculating Catalan number 12
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 44 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 40 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 36 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 36 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 40 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 44 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 12
loadI 48 => r0
store r1 => r0

// Calculating Catalan number 13
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 48 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 44 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 40 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 36 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 36 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 40 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 44 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 48 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 13
loadI 52 => r0
store r1 => r0

// Calculating Catalan number 14
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 52 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 48 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 44 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 40 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 36 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 36 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 40 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 44 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 48 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 52 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 14
loadI 56 => r0
store r1 => r0

// Calculating Catalan number 15
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 56 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 52 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 48 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 44 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 40 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 36 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 36 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 40 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 44 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 48 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 52 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 56 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 15
loadI 60 => r0
store r1 => r0

// Calculating Catalan number 16
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 60 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 56 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 52 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 48 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 44 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 40 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 36 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 36 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 40 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 44 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 48 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 52 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 56 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 60 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 16
loadI 64 => r0
store r1 => r0

// Calculating Catalan number 17
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 64 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 60 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 56 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 52 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 48 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 44 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 40 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 36 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 36 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 40 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 44 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 48 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 52 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 56 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 60 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 64 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 17
loadI 68 => r0
store r1 => r0

// Calculating Catalan number 18
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 68 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 64 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 60 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 56 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 52 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 48 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 44 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 40 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 36 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 36 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 40 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 44 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 48 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 52 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 56 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 60 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 64 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 68 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 18
loadI 72 => r0
store r1 => r0

// Calculating Catalan number 19
loadI 0 => r1

loadI 0 => r0
load r0 => r2
loadI 72 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 4 => r0
load r0 => r2
loadI 68 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 8 => r0
load r0 => r2
loadI 64 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 12 => r0
load r0 => r2
loadI 60 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 16 => r0
load r0 => r2
loadI 56 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 20 => r0
load r0 => r2
loadI 52 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 24 => r0
load r0 => r2
loadI 48 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 28 => r0
load r0 => r2
loadI 44 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 32 => r0
load r0 => r2
loadI 40 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 36 => r0
load r0 => r2
loadI 36 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 40 => r0
load r0 => r2
loadI 32 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 44 => r0
load r0 => r2
loadI 28 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 48 => r0
load r0 => r2
loadI 24 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 52 => r0
load r0 => r2
loadI 20 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 56 => r0
load r0 => r2
loadI 16 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 60 => r0
load r0 => r2
loadI 12 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 64 => r0
load r0 => r2
loadI 8 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 68 => r0
load r0 => r2
loadI 4 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

loadI 72 => r0
load r0 => r2
loadI 0 => r0
load r0 => r3
mult r2, r3 => r4
add r4, r1 => r1

// Storing Catalan number 19
loadI 76 => r0
store r1 => r0

// Outputting the Catalan numbers
output 0
output 4
output 8
output 12
output 16
output 20
output 24
output 28
output 32
output 36
output 40
output 44
output 48
output 52
output 56
output 60
output 64
output 68
output 72
output 76
