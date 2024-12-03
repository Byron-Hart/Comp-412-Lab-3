//NAME: James Lockard
//NETID: jml13
//SIM INPUT: -i 2048 500
//OUTPUT: 164
//
// Divides a given number by three.
// Note: the answer is very approximate
//       it usually gets the answer +-5


// decide where the output should be
loadI 1028 => r100

// load some constants
loadI 2 => r2
loadI 4 => r4
loadI 6 => r6
loadI 8 => r8
loadI 10 => r10
loadI 12 => r12
loadI 14 => r14
loadI 16 => r16

// load the input
loadI 2048 => r0 // numerator
load r0 => r0

// 1/3 in base 2 is .01010101010101
// so we bit shift the given number for
// each decimal place above
rshift r0, r2 => r20
rshift r0, r4 => r21
rshift r0, r6 => r22
rshift r0, r8 => r23
rshift r0, r10 => r24
rshift r0, r12 => r25
rshift r0, r14 => r26
rshift r0, r16 => r27

// we then sum each of these bit shifted
// parts to get the final answer
add r20, r21 => r21
add r21, r22 => r22
add r22, r23 => r23
add r23, r24 => r24
add r24, r25 => r25
add r25, r26 => r26
add r26, r27 => r27

//store the results
store r27 => r100

//output the result
output 1028