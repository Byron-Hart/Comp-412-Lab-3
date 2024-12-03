//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT:
//
loadI 1024 => r0

// Will f1 choose the mult, since that's its specialty?
// Or will it choose the add, since that result has much more that needs done?
mult r0, r0 => r1
add r0, r0 => r2
add r2, r2 => r3
add r3, r3 => r4
add r4, r4 => r5
add r5, r5 => r6
add r6, r6 => r7
add r7, r7 => r8
add r8, r8 => r9

// In the meantime, keep f0 busy.
load  r0 => r10
load  r0 => r11
load  r0 => r12
load  r0 => r13
load  r0 => r14
load r10 => r15
load r11 => r16
load r12 => r17
load r13 => r18
load r14 => r19
