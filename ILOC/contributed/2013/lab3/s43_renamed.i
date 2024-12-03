//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 3 5
//OUTPUT: 80
//
loadI	1024	 => r1
load	r1	 => r2
loadI	1028	 => r3
load	r3	 => r4
add	r2, r4 => r5
add	r4, r4 => r6
mult	r6, r5 => r7
loadI	2000	 => r8
store	r7	 => r8
output	2000
