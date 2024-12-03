//NAME: Yu Zhuang
//NETID: yz75
//SIM INPUT: -i 1024 8 128
//OUTPUT: 128 8 8 8
//
//To test the strategies of multiple stores. To test output or load with a constant(loadI) vr can eliminate some
//unnecessary denpendecies towards store.
//Usage before scheduling: ./sim -s 3 -i 2048 8 128 < yz75.i

loadI 1024 => r1
loadI 8 => r2
store r2 => r1

loadI 1028 => r3
loadI 16 => r4
store r4 => r3

add r1, r2 => r5
store r4 => r5

mult r4, r2 => r7
loadI 1032 => r6

loadI 1036 => r8
loadI 1040 => r9
store r2 => r9
store r2 => r5
store r7 => r5

load r1 => r4
load r3 => r12
mult r4, r12 => r11
store r7 => r3
store r7 => r1
store r2 => r3
store r11 => r6
store r11 => r8
store r2 => r6
store r2 => r8
output 1024
output 1028
output 1036
output 1040
