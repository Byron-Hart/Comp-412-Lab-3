//NAME: Lauren Schmidt
//NETID: lss4
//SIM INPUT:
//OUTPUT: 1 2 4 7 11 16

// Ouput Explanation:
//Calculates the first six numbers in the Lazy Caterer's Sequence
//
//The sequence describes the maximum number of pieces that a pie could
//be cut into using n cuts, where n >= 0.
//
//This can be described by the formula (n^2 + n + 2) / 2

//Test Explanation:
//Check efficiency of rematerialization of values to be used much later 
//in the code block.

//Initializes the starting memory addresses for the Lazy Caterer's output
loadI 1004 => r0
loadI 1008 => r1
loadI 1012 => r2
loadI 1016 => r3
loadI 1020 => r4
loadI 1024 => r5

//Load the first n in the sequence (n = 0) into a register
//Tests rematerialization of values to be used later
loadI 0 => r10
loadI 1 => r30
loadI 2 => r40
loadI 3 => r50
loadI 4 => r60
loadI 5 => r70

//Load the constant two into a register for calculations
loadI 1 => r11
loadI 2 => r12

//Calculate the number of pieces for the pie (n = 0)
mult 	r10, r10 => r20
add 	r20, r10 => r21
add 	r21, r12 => r22
rshift 	r22, r11 => r23

//Calculate the number of pieces for the pie (n = 1)
mult 	r30, r30 => r20
add 	r20, r30 => r21
add 	r21, r12 => r22
rshift 	r22, r11 => r24

//Calculate the number of pieces for the pie (n = 2)
mult 	r40, r40 => r20
add 	r20, r40 => r21
add 	r21, r12 => r22
rshift 	r22, r11 => r25

//Calculate the number of pieces for the pie (n = 3)
mult 	r50, r50 => r20
add 	r20, r50 => r21
add 	r21, r12 => r22
rshift 	r22, r11 => r26

//Calculate the number of pieces for the pie (n = 4)
mult 	r60, r60 => r20
add 	r20, r60 => r21
add 	r21, r12 => r22
rshift 	r22, r11 => r27

//Calculate the number of pieces for the pie (n = 5)
mult 	r70, r70 => r20
add 	r20, r70 => r21
add 	r21, r12 => r22
rshift 	r22, r11 => r28

//Store the result in memory for output later
store 	r23 => r0
store 	r24 => r1
store 	r25 => r2
store 	r26 => r3
store 	r27 => r4
store 	r28 => r5

//Output the calculated values
output 1004
output 1008
output 1012
output 1016
output 1020
output 1024


