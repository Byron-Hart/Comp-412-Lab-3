//NAME: Pu Dong
//NETID: pd22
//SIM INPUT:
//OUTPUT: 1036 4 256
//This ILOC code block mainly tests graph simplification

loadI 1024 => r1
loadI 1028 => r2
loadI 1032 => r3
loadI 4 => r4

//
add r4, r1 => r5
store r4 => r5 // 4@1028

//
loadI 256 => r2
load r5 => r4
mult r2, r4 => r5
store r2 => r5 // 256@1024


// 
loadI 1036 => r2
sub r2, r4 => r5
store r2 => r5 // 1036@1032

output 1032
output 1028
output 1024