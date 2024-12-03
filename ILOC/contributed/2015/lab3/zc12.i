//NAME: Zhouhan Chen
//NETID: zc12
//SIM INPUT: -i 1024 124 128
//OUTPUT: 124 128 124 2 12

// repeat multiple load, store and mult operations mixed with add and output operations
// test how good two functional units handle competing/contradictory instructions

loadI 1032 => r991
loadI 1036 => r992
loadI 1040 => r993
loadI 1044 => r994
loadI 1048 => r995
loadI 1052 => r996
loadI 1056 => r997
loadI 1060 => r998

loadI 1 => r1
loadI 2 => r2
loadI 3 => r3
loadI 4 => r4
loadI 5 => r5
loadI 6 => r6

store r1 => r991  // Mem(1024) = 1
store r2 => r992  // Mem(1028) = 2
output 1024       // no dependent

load r991 => r21  // r21 = 1
load r992 => r22  // r22 = 2
output 1028       // no dependent

store r3 => r993
store r4 => r994
output 1024       // no dependent

load r993 => r23  // r23 = 3
load r994 => r24  // r24 = 4

mult r21, r22 => r31 // not dependent with r23, r24
store r31 => r997 // r31 = 1*2 = 2

store r5 => r995
store r6 => r996
mult r23, r24 => r32 // dependent with r23, r24

store r32 => r998  // r32 = 3*4 = 12

output 1056   // Mem(1056) = 2
output 1060   // Mem(1060) = 12




