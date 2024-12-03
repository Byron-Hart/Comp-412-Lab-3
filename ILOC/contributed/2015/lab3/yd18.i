//NAME: Yilin Du
//NETID: yd18
//SIM INPUT: -i 2000 5 6 7 8 9 10 0 11 12 13 14 15
//OUTPUT: 6 7 8 9 10 11 12 13 14 15 15 15 15 15 15 15 2000 2004 2056 2004

//This block takes input 2000 5 6 7 8 9 10 0 11 12 13 14 15 and expects 
//6 7 8 9 10 11 12 13 14 15 15 15 15 15 15 15 2000 2004 2056 2004 as output.
//The input and output numbers have no particular meanings; they are just numbers I
//used to verify correctness. 
//This block tests a particular aspect of my scheduler: correctly detect cancellation
//of unknown variables in algebraic expressions.
//For example, if r0 = r1 + c1 and r2 = r1 + c2, then r3 = r2 - r0 must be c2-c1, no matter
//what value r1 is. c1, c2 are known constants.

// Defining constants
loadI 2000 => r0
loadI 2004 => r1
loadI 2048 => r2
loadI 2052 => r3
loadI 2056 => r4
loadI 12 => r6		// Used for calculations
loadI 3000 => r14
loadI 3004 => r15
loadI 3008 => r16
loadI 3012 => r17
add r0, r6 => r7  	// r7 = 2012, known

load r0 => r5 		// read from memory, r5=@r0=5, compiler has no idea what value r5 has.

add r7, r5 => r8 	// r8 = r5 + r7
sub r7, r5 => r9 	// r9 = r7 - r5
add r8, r9 => r10 	// r10 = r5 + r7 + r7 - r5 = 2012 + 2012 = 4024 for sure, no matter what r5 is

add r6, r5 => r11 	// r11 = r6 + r5
sub r8, r11 => r12 	// r12 = r8 - r11 = r5 + 2012 - 12 - r5 = 2000 for sure, no matter what r5 is

sub r10, r0 => r13 	// r13 = 4024 - 2000 = 2024 for sure.

//These following set of stores and loads test described feature.
store r1 => r2  	// store 2000 to known MEM(2048)
load r2 => r2  		// load MEM(2048)=2000 to r2
store r2 => r17 	// storing for output later to check correctness.

store r12 => r12 	// storing into MEM(2000), no matter what r5 was.
load r12 => r12
store r12 => r14	// storing for output later to check correctness.

store r1 => r3 		// storing to known MEM(2052)
load r3 => r3
store r3 => r15

store r12 => r12

store r13 => r13 	// storing into MEM(2024), no matter what r5 was.
load r13 => r13

store r4 => r4
load r4 => r4
store r4 => r16

store r13 => r13

//The below output should all be independent to above store and loads
output 2004
output 2008
output 2012
output 2016
output 2020
output 2028
output 2032
output 2036
output 2040
output 2044
output 2044
output 2044
output 2044
output 2044
output 2044
output 2044

// The following outputs will be outputing some of the above
// stored values to check correctness
output 3000
output 3004
output 3008
output 3012