//NAME: Jenna Netland
//NETID: jmn8
//SIM INPUT:
//OUTPUT: 56 70

// COMP 412, Lab 1, block "jmn8.3.i"
//
// Tests some basic live ranges
//
// Example usage: ./sim < jmn8.3.i
//

// Load values
loadI 8		=> r1
loadI 7		=> r2
loadI 35	=> r3
loadI 2		=> r4
// Perform multiplication
mult r1, r2 => r5
mult r3, r4 => r6
// Store values
loadI 2000  => r3
loadI 2004	=> r4
store r5	=> r3
store r6	=> r4
// Output values
output 2000
output 2004
