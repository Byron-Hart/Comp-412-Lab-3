//NAME: Connie Feng
//NETID: clf6
//SIM INPUT:
//OUTPUT: 24 28

// Checks that nop is ignored.
// Use this to test that all the possible ILOC operations have
// the correct latencies.

loadI 4 => r0 		// r0 <- 4
loadI 1 => r1 		// r1 <- 1
nop

add r0, r0 => r2 	// r2 <- 8
sub r0, r1 => r3 	// r3 <- 3
mult r2, r3 => r4 	// r4 <- 24
lshift r4, r1 => r5 // r5 <- 48
rshift r5, r1 => r5 // r5 <- 24

loadI 132 => r6		// r6 <- 132
store r5 => r6 		// MEM(132) <- 24

output 132			// output 24

load r6 => r8		// r8 <- MEM(132) [24]

add r8, r0 => r9	// r9 <- 28

store r9 => r6		// MEM(132) <- 28

output 132			// output 28