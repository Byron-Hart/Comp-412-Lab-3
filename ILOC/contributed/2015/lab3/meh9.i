//NAME: Marie Hoeger
//NETID: meh9
//SIM INPUT: -i 2000 1 2 3 4 5 6 7 8 9 10
//OUTPUT: 15 55

// This memory block sums 10 adjacent input elements stored in 
// memory, starting at memory address 2000. This block also stores
// and outputs the sum of the first five elements and the total
// sum. These values are stored in memory 2040 and 2044, 
// respectively.
//
// Since each memory value is a unique and guaranteed location, 
// each load on a memory location is able to execute independently 
// of the other IO instructions on other memory locations. Therefore,
// scheduling greatly improves the efficiency of the code (from 80
// cycles to 24 cycles). This code demonstrates that my scheduler is  
// able to determine that each of these memory locations are 
// guaranteed locations even though they are often the result of an 
// additions. A naive scheduler might not recognize that the result
// of arithmetic computations on two known values is also results in
// a known value.


// load memory and increment values
loadI 4 => r0
loadI 2000 => r1

// sum first 5 elements of input
load r1 => r2
add r1, r0 => r1
load r1 => r3
add r2, r3 => r2
add r1, r0 => r1
load r1 => r3
add r2, r3 => r2
add r1, r0 => r1
load r1 => r3
add r2, r3 => r2
add r1, r0 => r1
load r1 => r3
add r2, r3 => r2

// store sum of first half, output
loadI 2040 => r7
store r2 => r7
output 2040

// sum last 5 elements of input
add r1, r0 => r1
load r1 => r3
add r2, r3 => r2
add r1, r0 => r1
load r1 => r3
add r2, r3 => r2
add r1, r0 => r1
load r1 => r3
add r2, r3 => r2
add r1, r0 => r1
load r1 => r3
add r2, r3 => r2
add r1, r0 => r1
load r1 => r3
add r2, r3 => r2

// store sum of first half, output
loadI 2044 => r7
store r2 => r7
output 2044