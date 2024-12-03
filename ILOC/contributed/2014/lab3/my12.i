//NAME: Yun, Min Hong
//NETID: my12
//SIM INPUT: -i 1024 1 2 3 4 5 6 7 8 9 10
//OUTPUT: 55
//Description: Unrolled Sum
// r11 is pointing the reading addr
// r12 is the diff
// r11 is increasing by r12
// r20 is the storing addr
//Purpose of this test block : want to test if the graph simplifier 
//can handle multiple edges of loadI -> load -> store

loadI 1024 => r11
loadI 4 => r12
loadI 10 => r20

mult r12, r20 => r20
add r20, r11 => r20

load r11 => r1
add r12, r11 => r11
store r1 => r20

load r11 => r2
add r12, r11 => r11
add r1, r2 => r2
store r2 => r20

load r11 => r3
add r12, r11 => r11
add r2, r3 => r3
store r3 => r20

load r11 => r4
add r12, r11 => r11
add r3, r4 => r4
store r4 => r20

load r11 => r5
add r12, r11 => r11
add r4, r5 => r5
store r5 => r20

load r11 => r6
add r12, r11 => r11
add r5, r6 => r6
store r6 => r20

load r11 => r7
add r12, r11 => r11
add r6, r7 => r7
store r7 => r20

load r11 => r8
add r12, r11 => r11
add r7, r8 => r8
store r8 => r20

load r11 => r9
add r12, r11 => r11
add r8, r9 => r9
store r9 => r20

load r11 => r10
add r9, r10 => r10
store r10 => r20
output 1064
