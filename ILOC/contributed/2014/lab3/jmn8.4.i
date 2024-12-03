//NAME: Jenna Netland
//NETID: jmn8
//SIM INPUT: -i 128 4 10 200
//OUTPUT: 2004

// COMP 412, Lab 1, block "jmn8.4.i"
//
// Tests a known segment for register assignment 
//
// Example usage: ./sim < jmn8.4.i
//


loadI	128		=> r0
load	r0		=> r1
loadI	132		=> r2
load	r2		=> r3
loadI	136		=> r4
load	r4		=> r5
mult	r3, r5	=> r3
add		r1, r3	=> r1
store	r1		=> r0
output 128
