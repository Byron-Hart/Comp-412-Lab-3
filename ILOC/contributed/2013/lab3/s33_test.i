//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 6
//
//Max Payton - msp4
//Usage before scheduling: ./sim -s 3 < s33_components.i
//Test case to make sure the simulator can deal with dependency
// graphs that are not contained in 1 component

loadI 2 => r0
loadI 4 => r1
loadI 1024 => r2
add r0, r1 => r0
//Second component
loadI 52 => r10
mult r10, r10 => r10
//End of second component
store r0 => r2
output 1024
