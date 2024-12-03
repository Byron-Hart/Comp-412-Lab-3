//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 1024 1028 2076
//
// Check for correct output ordering.
// Tries to make the last output (output 1032) the longest path
// and have many depedencies so it is likely to be scheduled first.
// usage: ./sim -s 3 < s19_output_order.i
// Expected output (in this order):
//              1024
//              1028
//              2076
loadI 1024 => r1
loadI 1028 => r2
loadI 1032 => r3
store r1 => r1
store r2 => r2

loadI 2 => r4
add r3, r4 => r5
add r5, r4 => r5
add r5, r4 => r5
mult r5, r4 => r5
store r5 => r3

output 1024
output 1028
output 1032

