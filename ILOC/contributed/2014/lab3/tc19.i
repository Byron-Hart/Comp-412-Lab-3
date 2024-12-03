//NAME: Taixu Chen
//NETID: tc19
//SIM INPUT:
//OUTPUT: 4 4 8 4

//Purpose of this test block: The schedule should correctly recognize the output that can
//be executed before the stores which are irreverent to the mem location
//and multiple stores that can be pipelined together without excessive nops

// *** Usage before scheduling: ./sim -s 3 < tc19.i

loadI 1024	=> r1
loadI 1028	=> r2
loadI 1032 => r3
loadI 1036 => r4
loadI 4 => r5
store r5 => r1
store r5 => r2
store r5 => r3
store r5 => r4
output 1024
load r2=>r5
add r5,r5 => r5
store r5=>r2
output 1032
output 1028
output 1024


// end of block
