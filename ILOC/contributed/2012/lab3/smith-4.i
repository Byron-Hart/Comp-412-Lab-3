//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT:
//
// Smith - 4
// Usage before sceduling: ./sim -s 3 < smith-4.i
// Test tie breaker effectiveness
loadI 1028 => r0
loadI 4 => r1
add r0, r1 => r2
sub r0, r1 => r3
add r0, r1 => r4
load r4 => r5
load r4 => r6
load r4 => r7
load r4 => r8
load r5 => r9
mult r2, r2 => r10
mult r10, r2 => r11
mult r11, r2 => r12
mult r12, r2 => r13
