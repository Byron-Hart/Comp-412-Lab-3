//NAME: Valerie Baretsky
//NETID: veb2
//SIM INPUT: -i 1024 5
//OUTPUT: 45
//Description: Calculates the nth hexagonal number
//n is given in memory location 1024 (if 1024 not set, behavior is undefined)
//1, 6, 15, 28, 45, 66, 91, 120, 153, 190, 231. . .
//Hex(n) = 2n(2n-1)/2

loadI	1024 => r0
load	r0 => r0		//r0 = n
loadI	1 => r1			//r1 = 1
loadI	2 => r2			//r2 = 2

mult	r2, r0 => r3	//r3 = 2n
sub		r3, r1 => r4	//r4 = 2n-1
mult	r3, r4 => r5	//r5 = numerator
rshift	r5, r1 => r5	//r5 = answer

loadI	2048 => r6
store	r5 => r6
output	2048