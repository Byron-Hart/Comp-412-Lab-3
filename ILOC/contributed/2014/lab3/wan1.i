//NAME: Weston Novelli
//NETID: wan1
//SIM INPUT:
//OUTPUT: 90 60
// Test some interleaving of instructions, the first set of 
// instructions contains many loads and stores, the second does not. 
// The first set will take longer to compute than the second one. 
// But the outputs need to stay in the same order.


loadI 10=>r1
loadI 1024=>r2

store r1=>r2
load r2=>r3
add r1, r3=>r4

store r4=>r2
load r2 => r3
add r1,r3=>r4

store r4=>r2
load r2 => r3
add r1,r3=>r4

store r4=>r2
load r2 => r3
add r1,r3=>r4

store r4=>r2
load r2 => r3
add r1,r3=>r4

store r4=>r2
load r2 => r3
add r1,r3=>r4

store r4=>r2
load r2 => r3
add r1,r3=>r4

store r4=>r2
load r2 => r3
add r1,r3=>r4

store r4 => r2

output 1024

loadI 2000=>r5
load r5=> r6
add r1,r6=>r7
add r1,r7=>r8
add r1,r8=>r9
add r1,r9=>r10
add r1, r10 => r11
add r1, r11 => r12

store r12 =>r5

output 2000

