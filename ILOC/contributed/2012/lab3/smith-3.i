//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 10
//
// Smith - 3
// Usage before scheduling: ./sim -s 3 < smith-3.i
// Memory disambiguation: ability to detect potential data hazards. 
// This is a case where memory addresses are unknown because they 
// depend on user input to the simulator.
loadI 10 => r0
loadI 1032 => r1
store r0 => r1
loadI 1024 => r2
load r2 => r3
loadI 1028 => r4
load r4 => r5
loadI 33 => r6
loadI 17 => r7
store r6 => r3
store r7 => r4
output 1032
