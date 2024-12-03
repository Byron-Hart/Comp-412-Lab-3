//NAME: Caroline Lane
//NETID: cal7
//SIM INPUT:
//OUTPUT: 4 5 4 4
//
// tests edges for the serialization, that they're added and deleted correctly
// should output 4 5 4 4
loadI 1028 => r1
loadI 5 => r5
loadI 4 => r3 
loadI 1024 => r0
store r3 => r0
store r5 => r1
output 1024 // these outputs should only be dependent on one  of the stores 
output 1028
load r1 => r2 // this load is only dependent on one of the stores
add r3, r0 => r4 // get the address 1028
store r3 => r4 // should be dependent on everything with mem address 1028
output 1028
output 1024
