//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 3 1040
//
// Smith - 1
// Usage before scheduling: ./sim -s 3 < smith-1.i
loadI 512 => r1
loadI 3 => r2
add r1, r1 => r1
store r2 => r1
loadI 1028 => r1
loadI 1032 => r2
loadI 1036 => r3
loadI 1040 => r1
store r1 => r2
output 1024
output 1032
