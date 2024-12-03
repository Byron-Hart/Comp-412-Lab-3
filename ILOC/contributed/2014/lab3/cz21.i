//NAME: Chao Zhou
//NETID: cz21
//SIM INPUT: 
//OUTPUT: 0 50 200

// This test block contains many consecutive load/store which are independent with 
// each other, but the addresses are calculated by simple arithmetic operation
// (add/sub). Therefore, if the scheduler can recognize the result 
// of these operation, it can justify that they are independent with each other and 
// make the code block concise.
// *** Usage before scheduling: ./sim -s 3 < cz21.i
loadI 1024 => r0
loadI 100 => r1
loadI 4 => r2
loadI 1 => r3
store r1 => r0		// 100 => (1024)
add r0, r2 => r0	// r0 = 1028
store r1 => r0		// 100 => (1028)
add r0, r2 => r0	// r0 = 1032
store r1 => r0		// 100 => (1032)
add r0, r2 => r0	// r0 = 1036
store r1 => r0		// 100 => (1036)
add r0, r2 => r0	// r0 = 1040
store r1 => r0		// 100 => (1040)
add r0, r2 => r0	// r0 = 1044
store r1 => r0		// 100 => (1044)
sub r0, r2 => r0	// r0 = 1040
load r0 => r1		// (1040) => r1 = 100
add r1, r1 => r1	// r1 = 200
sub r0, r2 => r0	// r0 = 1036
store r1 => r0		// 200 => (1036)
sub r0, r2 => r0	// r0 = 1032
load r0 => r1		// (1032) => r1 = 100
lshift r1, r3 => r1	// r1 = 200
sub r0, r2 => r0	// r0 = 1028
store r1 => r0		// 200 => (1028)
sub r0, r2 => r0	// r0 = 1024
load r0 => r1		// (1024) => r1 = 100
sub r1, r1 => r1	// r1 = 0
add r0, r2 => r0	// r0 = 1028
store r1 => r0		// 0 => (1028)
add r0, r2 => r0	// r0 = 1032
load r0 => r1		// (1032) => r1 = 100
rshift r1, r3 => r1 // r1 = 50
add r0, r2 => r0	// r0 = 1036
store r1 => r0		// 50 => (1036)
add r0, r2 => r0	// r0 = 1040
load r0 => r1		// (1040) => r1 = 100
lshift r1, r3 => r1 // r1 = 200
add r0, r2 => r0	// r0 = 1044
store r1 => r0		// 200 => (1044)

sub r0, r2 => r0	// r0 = 1040
load r0 => r1		// (1040) => r1 = 100
rshift r1, r3 => r1 // r1 = 50
sub r0, r2 => r0	// r0 = 1036
store r1 => r0		// 50 => (1036)
sub r0, r2 => r0	// r0 = 1032
load r0 => r1		// (1032) => r1 = 100
sub r1, r1 => r1 	// r1 = 0
sub r0, r2 => r0	// r0 = 1028
store r1 => r0		// 0 => (1028)
sub r0, r2 => r0	// r0 = 1024
load r0 => r1		// (1024) => r1 = 100
sub r1, r1 => r1 	// r1 = 0
add r0, r2 => r0	// r0 = 1028
store r1 => r0		// 0 => (1028)
add r0, r2 => r0	// r0 = 1032
load r0 => r1		// (1032) => r1 = 100
rshift r1, r3 => r1 // r1 = 50
add r0, r2 => r0	// r0 = 1036
store r1 => r0		// 50 => (1036)
add r0, r2 => r0	// r0 = 1040
load r0 => r1		// (1040) => r1 = 100
lshift r1, r3 => r1 // r1 = 200
add r0, r2 => r0	// r0 = 1044
store r1 => r0		// 200 => (1044)

output 1028			// 0
output 1036			// 50
output 1044			// 200
