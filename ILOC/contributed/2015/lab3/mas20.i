//NAME: Matthew Schurr
//NETID: mas20
//SIM INPUT: -i 1024 1 2 3
//OUTPUT: 1 3 2

// Input Requirements: Three numbers (a, b, c)
// Outputs: (a, c, b)
// Algorithm/Testing Strategy: Tests that the schedule can prove that two stores
// at an offset from a base address are independent and thus remove those edges
// from the dependency graph in order to improve the efficiency of the scheduler.

loadI 1024 => r1
loadI 4 => r2
loadI 8 => r3
add r1, r2 => r4
add r1, r3 => r5
load r4 => r6
load r5 => r7
add r6, r7 => r8
loadI 12 => r9
add r1, r9 => r10
store r8 => r10
store r7 => r4
store r6 => r5
output 1024
output 1028
output 1032
