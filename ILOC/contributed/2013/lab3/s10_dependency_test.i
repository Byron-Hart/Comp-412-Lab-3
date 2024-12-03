//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1 1
//OUTPUT: 1 4
//
// Usage before scheduling: ./sim -s 3 -i 1024 1 1 < s10_dependency_test.i
// Expected output: 1 4
// COMP 412, Lab 3
// Sarah Davies (smd2)
// 
// Used for making sure that dependencies are correct.
// It is used to make sure that loads are dependent on stores above them,
// outputs are dependent or outputs and stores above them, and
// stores are dependent on stores, outputs, or loads above them.
//		That is why there is a uselsess store at the end, to have a store that
//		should be dependent on an output (as well as loads and outputs).
//
// The load r0 => r10 should be dependent on 
//		store r2 => r1
//		loadI 1024 => r0
//
// The store r2 => r1 should be dependent on all the outputs, stores, and loads
// before it.
//
// The output 1028 should be dependent on the output 1024, as well as the
// stores before it
//
// Outputs the first number
// Outputs (first + second) * 2
//
// Expected input:
//    -i 1024 1 1
//

loadI 1024 => r0
loadI 1028 => r1

load r0 => r2
load r1 => r3

add r2, r3 => r2

store r2 => r1

load r0 => r10

add r2, r2 => r2

store r2 => r1

output 1024

output 1028

add r2, r2 => r2

store r2 => r1
