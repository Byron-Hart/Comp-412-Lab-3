//NAME: Bojun Wang
//NETID: bw6
//SIM INPUT: -i 2048 1 2
//OUTPUT: 6765

//Compute Fibonacci number, r(i) contains the ith Fibonacci number
// It computes the 20th Fibonacci number.
// The ith register holds the ith Fibonacci number.
//
loadI 2048 => r0
load r0 => r1  //load Mem[2048] (1) into r1
loadI 2052 => r2
load r2 => r3  //load Mem[2052] (2) into r3
add r1, r3 => r4 //r4 contains 4th Fibonacci number
add r3, r4 => r5 //r5 contains 5th Fibonacci number
add r4, r5 => r6
add r5, r6 => r7
add r6, r7 => r8
add r7, r8 => r9
add r8, r9 => r10
add r9, r10 => r11
add r10, r11 => r12
add r11, r12 => r13
add r12, r13 => r14
add r13, r14 => r15
add r14, r15 => r16
add r15, r16 => r17
add r16, r17 => r18
add r17, r18 => r19
add r18, r19 => r20 //r20 contains 20th Fibonacci number

store r20 => r0 //store the 20th Fibonacci number back to Mem[2048]
output 2048     //output Mem[2048].
