//NAME: Jenna Netland
//NETID: jmn8
//SIM INPUT:
//OUTPUT: 4

// COMP 412, Lab 1, block "jmn8.1.i"
//
// Tests limited operations for correctness
//
// Example usage: ./sim -i 2000 2 3 < jmn8.1.i
//

// Puts 4 in 2004
loadI 4		=> r1
loadI 2000	=> r2
loadI 2004  => r3
store r1    => r2
load r2		=> r4
store r4	=> r3
output 2004
