//NAME: Carolyn Shuford
//NETID: cms14
//SIM INPUT: -i 2000 1 
//OUTPUT: 1 2 2 4 4 8 8 16 16 32 32 64 64 128
//
// Test block that does a lot of load and storing using just two registers



loadI 2000	=> r2
load r2		=> r3
output 2000
add r3, r3 => r3
store r3 => r2
output 2000
load r2		=> r3
output 2000
add r3, r3 => r3
store r3 => r2
output 2000
load r2		=> r3
output 2000
add r3, r3 => r3
store r3 => r2
output 2000
load r2		=> r3
output 2000
add r3, r3 => r3
store r3 => r2
output 2000
load r2		=> r3
output 2000
add r3, r3 => r3
store r3 => r2
output 2000
load r2		=> r3
output 2000
add r3, r3 => r3
store r3 => r2
output 2000
load r2		=> r3
output 2000
add r3, r3 => r3
store r3 => r2
output 2000
