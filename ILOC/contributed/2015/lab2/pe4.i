//NAME: Peter Elmers
//NETID: pe4
//SIM INPUT:
//OUTPUT: -112 98 34

// This block tests a couple of cases where taking last-next-use to spill is
// not optimal on k <= 4.
// Also, for fun, we count SR in binary.

loadI 14 => r0
loadI 84 => r1
loadI 50 => r10
add r0,r1 => r11
sub r1,r10 => r100
loadI 1024 => r101
store r100 => r101
loadI 1028 => r101
store r11 => r101

// r100 has the last use, but we would do better spilling r10 instead.
add r11,r11 => r110
sub r110,r10 => r10
sub r100,r10 => r10
loadI 1032 => r101
store r10 => r101

output 1032
output 1028
output 1024

