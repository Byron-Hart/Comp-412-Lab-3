//NAME: Jenna Netland
//NETID: jmn8
//SIM INPUT:
//OUTPUT: 2004 4008 5000

// COMP 412, Lab 1, block "jmn8.2.i"
//
// Tests a few types of operations for correctness
//
// Example usage: ./sim < jmn8.2.i
//

// Puts 2004 in 2000
loadI 4		=> r1
loadI 2000	=> r2
add r2, r1	=> r3
store r3	=> r2
output 2000
// Puts 4008 in 2004
loadI 2000  => r2
loadI 2004  => r5
load r2		=> r4
add r4, r4  => r2
store r2    => r5
output 2004
// Does nothing BECAUSE IT CAN!!!
nop 
// Puts 5000 in 2008
loadI 5000  => r2
loadI 2008  => r3
store r2    => r3
output 2008
