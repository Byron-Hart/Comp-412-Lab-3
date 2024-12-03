//NAME: Kaipeng Li
//NETID: kl33
//SIM INPUT: -i 1024 1 3 5 7 9 2 4 6 8 10
//OUTPUT: 190
// The code implements the dot product of two vectors, each has five elements
// Please input the initial values of the vector with 5 values for each vector, respectively
// For example: use arguments "-i 1024 1 3 5 7 9 2 4 6 8 10" 
//              to initialize two vectors with beginning address 1024: vector1: [1 3 5 7 9]; vector2: [2 4 6 8 10]
// The simulator calculate the dot product of vector1 and vector2 and generate the output result

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
loadI 1052 => r7
load r7 => r7 
loadI 1056 => r8
load r8 => r8 
loadI 1060 => r9
load r9 => r9 

//calculate multiplications of each pair of vector element
mult r0, r5 => r5
mult r1, r6 => r6
mult r2, r7 => r7
mult r3, r8 => r8
mult r4, r9 => r9

//calculate the sum of the multiplication results
add r5, r6 => r6
add r6, r7 => r7
add r7, r8 => r8
add r8, r9 => r9

//output
loadI 2048 => r10
store r9 => r10
output 2048