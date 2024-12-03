//NAME: Kaipeng Li
//NETID: kl33
//SIM INPUT: -i 1024 2 4 6 8 10 12 14
//OUTPUT: 560
// The code implements the square of magnitude for a vector, which has seven elements
// Please input the initial elements of the vector with 7 values
// For example: use arguments "-i 1024 2 4 6 8 10 12 14" 
//              to initialize the vector [2 4 6 8 10 12 14] with beginning address 1024
// The simulator calculate square of magnitude of the vector and generate the output result

//load input values:
loadI 1024 => r0
load r0 => r0 
loadI 1028 => r1
load r1 => r1 
loadI 1032 => r2
load r2 => r2 
loadI 1036 => r3
load r3 => r3 
loadI 1040 => r4
load r4 => r4 
loadI 1044 => r5
load r5 => r5 
loadI 1048 => r6
load r6 => r6

//calculate squares of each element
mult r0, r0 => r0
mult r1, r1 => r1
mult r2, r2 => r2
mult r3, r3 => r3
mult r4, r4 => r4
mult r5, r5 => r5
mult r6, r6 => r6

//calculate the sum of the multiplication results
add r0, r1 => r1
add r1, r2 => r2
add r2, r3 => r3
add r3, r4 => r4
add r4, r5 => r5
add r5, r6 => r6

//output
loadI 2048 => r7
store r6 => r7
output 2048