//NAME: Terry Lin
//NETID: tl18
//SIM INPUT: -i 2048 2048 10 15 1024
//OUTPUT: 10 15 2 3 10 10 20 10 20 15 35
//
// Usage before scheduling: ./sim -s 3 -i 2048 2048 10 15 1024 <  tl18.i
//
// This block tests that the scheduler can identify when two registers are different even if they do not know the values of one of the registers 
// in the definition. This is tested by using lshift and giving it the same registers but with a different number of bits to shift to the left.
// Other operations are added in to test the scheduling of loads, stores, and outputs. 
// 
loadI 2048 => r0 // r0 = 2048
loadI 1 => r1 // r1 = 1
loadI 2 => r16 // r16 = 2
loadI 3 => r17 // r17 = 3
lshift r1, r16 => r2 // r2 = 4
lshift r1, r17 => r3 // r3 = 8
load r0 => r6 // r6 = mem:2048 = 2048
add r6, r2 => r4 // r4 = (2052)
add r6, r3 => r5 // r5 = (2056)
load r4 => r7 // r7 = mem:2052 = 10
load r5 => r8 // r8 = mem:2056 = 20
add r5, r3 => r22 // r22 = 2064
add r2, r22 => r23 // r23 = 2068
store r16 => r22 // mem:2064 = 2
store r17 => r23  // mem:2068 = 3
output 2052 // 10
output 2056 // 15
output 2064 // 2
output 2068 // 3
loadI 12 => r9 // r9 = 12
add r6, r9 => r10 // r10 = 2060
load r10 => r11 // r11 = mem:2060 = 1024
lshift r11, r16 => r12 // r12 = 4096
lshift r11, r17 => r13 // r13 = 8192 
store r7 => r12 // mem: 4096 = 10
load r12 => r14 // r14 = 10
store r7 => r13 // mem:8192 = 10
load r13 => r15 // r15 = 10
output 4096 // 10
output 8192 // 10
add r14, r15 => r20 // r20 = 20
store r20 => r12 // mem:4096 = 20
output 4096 // 20
output 8192 // 10
store r8 => r13 // mem:8192 = 15
load r12 => r18 // r18 = 20
load r13 => r19 // r19 = 15
add r18, r19 => r21 // r21 = 35
output 4096 // 20
output 8192 // 15
store r21 => r0 // mem:2048 = 35
output 2048 // 35
