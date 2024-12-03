//NAME: Meghan Doherty
//NETID: med7
//SIM INPUT: -i 1024 -10 2
//OUTPUT: 4 -40 -36

// A simple arithmetic problem that tests some of the simpler optimizations, 
// such as tracking values and using more efficient serialization.
// It will output the steps of the arithmetic operation.

// 4(A) + B
// Output: 4, 4(A), 4(A) + B

loadI 1020 => r0	// Load 4 (what you're multiplying A by) into memory 1020
loadI 4 => r10
store r10 => r0		// Can be done one right after the other
store r10 => r0
store r10 => r0
load r0 => r10
output 1020			// Output 4

add r0, r10 => r6	// Load A
load r6 => r7
mult r7, r10 => r7	// 4(A)
store r7 => r6		// Store 4(A)
output 1024			// Output 4(A)

add r0, r10 => r6	
load r6 => r11		// B
sub r6, r10 => r6	
load r6 => r12		// Load 4(A)
load r6 => r13
add r12, r11 => r11	// 4(A) + B
load r6 => r12
add r6, r10 => r6
load r6 => r12
add r6, r10 => r6
add r10, r13 => r50
load r6 => r12
store r11 => r6		// Store result in 1028
output 1028
