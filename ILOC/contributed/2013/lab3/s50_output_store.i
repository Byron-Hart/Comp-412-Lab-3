//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 8 9
//OUTPUT: 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4
//
// s50_output_store.i
// brief:
//test if the project can process the dependency between output and store,
//ruling out the effect of the latency of load
// simulator: ./sim -s 3 -i 1024 8 9 <  s50_output_store.i

loadI 1024 => r0
loadI 1028 => r1
loadI 0 => r2
loadI 4 => r3
store r2 => r0
load r1 => r4
load r0 => r5
loadI 1024 => r6
load r6 => r7

store r3 => r0
add r0, r2 => r8

load r8 => r9
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
output 1024
store r0 => r8
// all outputs must be executed before store
