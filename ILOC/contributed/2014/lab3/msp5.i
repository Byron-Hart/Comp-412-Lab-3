//Name: Michael Peirce
//NETID: msp5
//SIM INPUT: -i 1024 100
//OUTPUT: 100 0 0

// COMP 412, Lab 1, block "msp5.i"
//
// Example usage: ./sim -i 1024 100 < msp5.i
//
// Tests if it recognizes the identities x - x = 0 or x * 0 = 0.
// If it does not, then it will spend extra time waiting for stores
// to finish when not necessary

loadI 1024 => r0
load r0 => r1
sub r1, r1 => r2 // This will always be 0
add r2, r0 => r3 // This should still be a known value
loadI 1028 => r4
store r1 => r4 // This is a unique store
output 1028
store r2 => r3 // This is a unique store
output 1024
loadI 0 => r5
mult r5, r1 => r6 // This will always be 0
add r6, r0 => r7 // This should still be a known value
add r7, r7 => r8
store r6 => r8 // This is a unique store
output 2048
