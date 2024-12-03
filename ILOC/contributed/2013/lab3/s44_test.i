//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 5 4
//
// Comp 412 Contributed test block
//
// Tests live register renaming and dependency
// Tests order of store dependency
// Tests that functional unit rules are obeyed
// Tests loads and its dependency on all other operands except loadI
// Expects no initial value
// Usage before scheduling: ./sim -s 1 

loadI 2 => r5
loadI 1024 => r9
loadI 5 => r5
loadI 1028 => r6
loadI 4 => r7
store r5 => r9
loadI 10 => r20
loadI 2 => r21
store r7 => r6
mult r20, r21 => r22
add r20, r22 => r23
loadI 1032 => r50
load r6 => r50
mult r6, r23 => r60
store r60 => r50
output 1024
output 1028
