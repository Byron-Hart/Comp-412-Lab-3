//NAME: Yizi Gu
//NETID: yg31
//SIM INPUT: -i 1020 0 4 8 12 16 20 24 28
//OUTPUT: 48 4 2056 12 16 20 64 28
//This block does some meaningless computation. 
//The main purpose of this block is to test:
// 1. If the allocator can scan the source code properly
// 2. If the allocator can deal with clean and dirty value properly 
// 3. If your implemented allocator can do better than lab1_ref with this
// input
loadI 1020 => r00    
loadI 1024 => r01  
loadI 1028 => r002  
loadI 1032 => r0003 
loadI 1036 => r0004
loadI 1040 => r005 
loadI 1044 => r06 
loadI 1048 => r7 
loadI 0 =>  r10
load  r00=>r11
load  r002=>  r12
load  r01  =>r13
load  r0003 => r14
load  r7 => r15
load  r06 => r16
load  r005 => r17
load  r0004 => r18

add r10, r11 => r20 
add r20, r11 => r13 
add r13,r12 => r15 
loadI 1020 => r30
sub  r01, r15 => r31
add r10, r14 => r22
add r22,r14 => r15
add r15,r16 => r17
add r17,r18 => r19
store r17 => r30
load r30 => r17
store r17 => r30
load r30 => r17
store r17 => r30
load r30 => r17
add r17,r18 => r19
sub r19, r11 => r12
add r30 ,r15 => r30
store r12 => r30
add r0003,r01 => r0003 
store r0003 => r002
load r002 => r0003 
add r0004,r01 => r0004
store r0004 => r0003 
load r0003 => r0004
add r005, r01=> r005
store r005 => r0004
load r0004 => r005
add r06,r01 => r06
store r06 => r005
load r005 => r06
add r7, r01 => r7
store r7 => r06
add r7,r01 => r7
store r31 => r7
load r06 => r200
add r200, r0003 => r0003
store r200 => r0003
output 1020
output 1024
output 1028
output 1032
output 1036
output 1040
output 1044
output 1048
