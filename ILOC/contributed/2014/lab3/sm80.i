//NAME: Siyuan Ma
//NETID: sm80
//SIM INPUT:-i 1024 1 2 3 4
//OUTPUT: 1 2 3 4
//Test whether the scheduler can identify the 
//constant value and generate a more accurate 
//dependency graph

loadI 1024 => r0
loadI 4 => r1
loadI 4 => r2

load  r0 => r3
store r3 => r1
add   r1, r2 => r1
add   r0, r2 => r0

load  r0 => r3
store r3 => r1
add   r1, r2 => r1
add   r0, r2 => r0

load  r0 => r3
store r3 => r1
add   r1, r2 => r1
add   r0, r2 => r0

load  r0 => r3
store r3 => r1
add   r1, r2 => r1
add   r0, r2 => r0

output 4
output 8
output 12
output 16
