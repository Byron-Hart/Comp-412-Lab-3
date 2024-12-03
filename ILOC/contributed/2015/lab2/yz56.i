//NAME:Yun Zhou
//NETID:yz56
//SIM INPUT:
//OUTPUT: 1 2 5 14 42

//This block calculates the fist 5 Catalan Number

//Initialize C0, C1 to be 1
loadI 1 => r0
loadI 1 => r1

//Load memory address to store the result
loadI 1024 => r101
loadI 1028 => r102
loadI 1032 => r103
loadI 1036 => r104
loadI 1040 => r105

//Calculate C2
mult r0, r1 => r22
mult r1, r0 => r23
add r22, r23 => r2 //C2

//Calculate C3
mult r0, r2 => r24
mult r1, r1 => r25
mult r2, r0 => r26
add r24, r25 => r27
add r26, r27 => r3 //C3

//Calculate C4
mult r0, r3 => r28
mult r1, r2 => r29
mult r2, r1 => r30
mult r3, r0 => r31
add r28, r29 => r32
add r30, r31 => r33
add r32, r33 => r4

//Calculate C5
mult r0, r4 => r34
mult r1, r3 => r35
mult r2, r2 => r36
mult r3, r1 => r37
mult r4, r0 => r38
add r34, r35 => r39
add r36, r37 => r40
add r38, r39 => r41
add r40, r41 => r5

//Store the result
store r1 => r101
store r2 => r102
store r3 => r103
store r4 => r104
store r5 => r105

//Output the result
output 1024
output 1028
output 1032
output 1036
output 1040