//NAME: Yizi Gu
//NETID: yg31
//SIM INPUT: -i 0 100 200
//OUTPUT: 4 8 12 20 32 100 104 100 104 100 100 32 20 12 32 100 100
//
// Usage before scheduling: ./sim -s 3 -i 0 100 200 < yg31.i
// This test block focuses on memory operations
loadI 0 => r1 // 
loadI 4 => r2 // 
load r1 => r100  // r100 =100
load r2 => r200 // r200 = 200
add r1, r2 => r3 //  r3 = 4
add r2, r3 => r4 //  r4 = 8
add r3, r4 => r5 // r5 = 12
add r4,r5 => r6  // r6 = 20
add r5, r6 => r7  // r7 = 32
add r100, r1 => r8 // r8 = 100
add r100, r2 => r9 // r9 = 104
store r3 => r3 // these address can all be statically resolved
output 4
load  r3 => r3
store r4 => r4
output 8
load  r4 => r4
store r5 => r5
output 12
load  r5 => r5
store r6 => r6
output 20
load  r6 => r6
store r7 => r7
output 32
load  r7 => r7
store r8 => r8
output 100
load  r8 => r8
store r9 => r9
output 104
store r8 => r2
load  r9 => r9 // 
load r2 => r101  // 100
store r101 => r101
add r101, r9 => r9 // 204
load r101 => r101 // 
add r101, r9 => r9 // 304
load  r9  => r1000
store r101 => r1 // mem(0) = 200 
load  r8 => r2000
store r1000 => r2
load  r7 => r3000
store r2000 => r3
load  r6   => r4000
store r3000 => r4
load  r5   => r5000
store r4000 => r5
load  r4   => r6000
store r5000 => r6
load  r3   => r7000
store r6000 => r7
load  r2   => r8000
store r7000 => r8
load  r1   => r9000
store r8000 => r9
output 100
output 104
output 0
output 4
output 8
output 12
output 20
output 32
output 100
output 304
