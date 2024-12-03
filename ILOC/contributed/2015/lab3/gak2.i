//NAME: Greg Kinman
//NETID: gak2
//SIM INPUT: 
//OUTPUT: 4 3 2 1
//Tests compression of store and load blocks.

//Initializes memory locations.
loadI 1024 => r0
loadI 1028 => r1
loadI 1032 => r2
loadI 1036 => r3

//Initializes data values.
loadI 1 => r4
loadI 2 => r5
loadI 3 => r6
loadI 4 => r7

//Stores data values to memory locations. This block can be compressed 
//(i.e., nops are unnecessary except after the last store).
store r4 => r0
store r5 => r1
store r6 => r2
store r7 => r3

//Loads data values from memory locations in reverse order. This block can be 
//compressed (i.e., nops are unnecessary except after the last load).
load r0 => r7
load r1 => r6
load r2 => r5
load r3 => r4

//Stores data values to memory locations in reverse order. The cleverest 
//scheduler can group the stores and loads and compress them.
store r4 => r0
load r0 => r0
store r5 => r1
load r1 => r1
store r6 => r2
load r2 => r2
store r7 => r3
load r3 => r3

output 1024
output 1028
output 1032
output 1036
