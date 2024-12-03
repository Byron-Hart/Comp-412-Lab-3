//NAME: Yilin Du
//NETID: yd18
//SIM INPUT: -i 2000 14
//OUTPUT: 1 1 2 5 14

//This block calculates the first 4 Catalan numbers, C0, C1, C2, C3, assuming the
//Catalan numbers starts from the 0th Catalan number and that C0 = 1.
//This block also tests an aspect of the robustness of the allocator: it shoud 
//know that a register previously having a clean value becomes dirty as long as
//one of the store operations between the current operation and the next use of
//this register uses the same memory location as the load operation that produced
//the value currently residing in this register.
//In order to do this test, the block also outputs the input given above (at address 2000)
//which is actually C4.
//
//Therefore, this block takes input -i 2000 14, and produces 1 1 2 5 14, the first
//five Catalan numbers.
//
//For information on Catalan numbers, see https://en.wikipedia.org/wiki/Catalan_number
//
//This block calculates the Catalan numbers using the recursive formula
//Cn+1 = Sum_(i from 0 to n) (Ci * Cn-i), where Cn+1 is the n+1th Catalan number,
//Cn-i is the n-ith Catalan number.

//C0, assuming known.
loadI 1 => r1
loadI 1024 => r2
store r1 => r2  //Storing C0 to 1024

//Calculating C1, which is simply C0
loadI 1028 => r3
load r2 => r4
store r4 => r3	//Storing C1 to 1028

//Calculating C2, C2 = C0 * C1 + C1 * C0
loadI 1032 => r5
load r2 => r6
load r3 => r7
mult r6, r7 => r8
add r8, r8 => r8
store r8 => r5  //Storing C2 to 1032

//Until now, r6 is C0, r7 is C1, r8 is C2
//Calculating C3, C3 = C0 * C2 + C1 * C1 + C2 * C0
loadI 1036 => r9
mult r6, r8 => r10
mult r8, r6 => r11
mult r7, r7 => r12
add r10, r11 => r11
add r11, r12 => r12
store r12 => r9  //Storeing C3 to 1040

//Testing * mentioned at the top
loadI 2000 => r13 
load r13 => r14  //r14 holds C4

//Multiple operations to occupy registers
loadI 1 => r15
add r15, r15 => r16
add r16, r16 => r17
add r17, r17 => r18
add r18, r18 => r19
add r19, r19 => r20
add r16, r5 => r36
add r17, r5 => r35
add r18, r5 => r34
add r19, r5 => r33

loadI 2004 => r21
store r20 => r21 //A "clean" store, r14 is still clean

//More operations to occupy registers
add r5, r20 => r21
add r21, r21 => r22
add r22, r22 => r23
add r23, r23 => r24
add r20, r20 => r26
add r21, r5 => r27
add r22, r5 => r28
add r23, r5 => r29
add r26, r5 => r30
add r27, r5 => r31
add r22, r28 => r32
add r23, r29 => r33
add r30, r5 => r24
add r31, r5 => r23
add r32, r5 => r22
add r29, r5 => r21

//More "clean" stores
loadI 2004 => r37
store r19 => r37
store r18 => r37
store r17 => r37
store r16 => r37
store r36 => r37
store r35 => r37
store r34 => r37
store r33 => r37

//This store makes "r14" dirty, but next use of r14 is
//still after this store
store r24 => r13
loadI 1040 => r25
store r14 => r25

//Output the Catalan numbers C0, C1, C2, C3, C4
output 1024
output 1028
output 1032
output 1036
output 1040