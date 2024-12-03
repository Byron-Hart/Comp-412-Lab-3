//NAME: Lauren Schmidt
//NETID: lss4
//SIM INPUT: -i 2000 4
//OUTPUT: 20 23
//
//Output Explanation:
//Let n refer to the number input to the simulator at memory address 2000.

//This ILOC block calculates the result of the 5 * n and the 5th number in the 
//fibonacci sequence if the first number was n and the second number was n + 1
//rather than 0 and 1 respectively.

//Test Explanation:
//The series of additions uses loads and stores that should be independent
//of each other during computations in order to check for dependence graph removal of 
//unnecessary serialization edges.

// Load the input value into two separate registers
loadI 2000 => r0
loadI 2000 => r10
load r0    => r1
load r10   => r11

// Load output addresses into registers
loadI 2004 => r2
loadI 2008 => r12

// Load the value 1 into a register in order to add for the psuedo-fibonacci calculation.
loadI 1  => r21

// Calculate the first addition and second fibonacci number and store in a register
add r1, r1 => r4		// 8
add r11, r21 => r14		// 5
store r4     => r2
store r14    => r12

// Calculate the second addition and third fibonacci number and store in a register
add r1, r4 => r5		// 12
add r11, r14 => r15		// 9
store r5     => r2
store r15    => r12

// Calculate the third addition and fourth fibonacci number and store in a register
add r1, r5 => r6		// 16
add r14, r15 => r16		// 14
store r6     => r2
store r16    => r12

// Calculate the fourth addition and fifth fibonacci number and store in a register
add r1, r6   => r7 		// 20
add r15, r16 => r17     // 25
store r7     => r2
store r17    => r12

// Output the results of the calculations
output 2004
output 2008
