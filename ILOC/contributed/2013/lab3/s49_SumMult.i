//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 2000 1 2 3 4 5 6
//OUTPUT: 10 30
//
// COMP 412, 
// Instruction Scheduling
// s49_SumMult.i; calculate sum of four nums  and mult of two
// Written by YangWu
// *** Usage before scheduling: sim -s 3 -i 2000 n n n n n n <s49_SumMult.i
// *** such as  ./sim -s 3 -i 2000 1 2 3 4 5 6 <s49_SumMult.i
loadI 4		=> r1
loadI 2000	=> r2
load r2		=> r10
add r2, r1	=> r2
load r2		=> r11
add r2, r1	=> r2
load r2		=> r12
add r2, r1	=> r2
load r2		=> r13
add r2, r1	=> r2
load r2		=> r14
add r2, r1	=> r2
load r2		=> r15
add r2, r1	=> r16
add r16, r1	=> r17
add r10, r11	=> r10
add r10, r12	=> r10
add r10, r13	=> r10
mult r14, r15	=> r14
store r10	=> r16
store r14	=> r17
output 2024
output 2028
//end of block 
