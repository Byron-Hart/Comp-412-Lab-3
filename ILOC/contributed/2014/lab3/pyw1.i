//NAME: Peter Washington
//NETID: pyw1
//SIM INPUT: -i 1024 10 20
//OUTPUT: 10 20 25 14 14
// 
// This ILOC block tests that my scheduler can efficiently handle intermixed loads
// and stores that appear right next to each other. 
//
// This block also tests how well the scheduler performs when there is a repeated
// and redundant load. Since we are only allowed to perform instruction scheduling,
// the scheduler can handle this case well by adding slightly more weights to the
// load operation.
// 
// This ILOC test block also provides an example of an ILOC block for which my
// instruction scheduler performs slightly better than the reference scheduler.
// This improvement has to do with the way that my instruction scheduler weights
// loads versus stores.
//

loadI 1024 => r0
loadI 1028 => r1

load r0 => r2
load r1 => r3

loadI 4 => r4

add r4, r2 => r10
add r4, r3 => r11

add r4, r1 => r5
add r5, r1 => r6

loadI 25 => r7

store r7 => r5
load r5 => r8
store r7 => r6
load r6 => r9

output 1024
output 1028
output 1032

// This is the part of the block that is critical to the improved performance
// of my scheduler over the reference scheduler. 
store r8 => r1
store r9 => r1
store r10 => r1
load r1 => r11 // This operation is repeated, and my scheduler handles this well.
load r1 => r11
load r1 => r11
load r1 => r11
store r11 => r0
load r1 => r11
load r0 => r10

output 1024
output 1028

store r10 => r0
store r11 => r1

