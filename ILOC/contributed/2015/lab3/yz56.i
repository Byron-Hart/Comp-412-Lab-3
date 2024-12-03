//NAME: Yun Zhou
//NETID: yz56
//SIM INPUT: -i 1024 1 0
//OUTPUT: 1 0 1 2 9 44

// number of derangements of n=0, ..., 5
// D(n) = (n-1) * (D(n-1) + D(n-2))

loadI 1024 => r0
loadI 1028 => r1
load r0 => r2 // D(0)
load r1 => r3 // D(1)

// calculate D(2)
loadI 1 => r4 // n-1
add r2, r3 => r5
mult r4, r5 => r6 // D(2)
loadI 1032 => r7
store r6 => r7

// calculate D(3)
loadI 2 => r8 // n-1
add r6, r3 => r9
mult r9, r8 => r10 // D(3)
loadI 1036 => r11
store r10 => r11

// calculate D(4)
loadI 3 => r12 // n-1
add r6, r10 => r13
mult r12, r13 => r14 // D(4)
loadI 1040 => r15
store r14 => r15

// calculate D(5)
loadI 4 => r16 // n-1
add r10, r14 => r17
mult r16, r17 => r18 // D(5)
loadI 1044 => r19
store r18 => r19

output 1024
output 1028
output 1032
output 1036
output 1040
output 1044


