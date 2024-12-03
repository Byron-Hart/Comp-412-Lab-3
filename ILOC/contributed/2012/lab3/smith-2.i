//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 4 8
//
// Smith - 2
// Usage before scheduling: ./sim -s 3 < smith-2.i
// Memory disambiguation: ability to recognize a clear data hazard 
// (in this case, a WAW dependency), and also to detect when there 
// is clearly not a data hazard. 
loadI 4 => r0
loadI 1024 => r1
loadI 1028 => r2
add r0, r1 => r3
store r0 => r3
load r2 => r4
loadI 8 => r0
loadI 1024 => r1
loadI 1028 => r2
add r0, r1 => r3
store r0 => r3
load r2 => r4
output 1028
output 1032
