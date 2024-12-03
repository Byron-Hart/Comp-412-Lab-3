//NAME: Caleb Voss
//NETID: cav2
//SIM INPUT: -i 1028 333
//OUTPUT: 344 120 8 464 680 9 1392 1392 464 232 32 232 1028 264

// Input: This memory location should get overwritten by one of the
//  operations. It is just a sanity check.
// Output: Some values which are stored to memory during the course of the
//  program. Some store operations write to the same location, so this verifies
//  that the order is preserved.
//
// 
// STORE to and OUTPUT from a whole bunch of addresses which are computed
// purely from arithmetic operations on LOADI constants. Thus, a scheduler which
// remembers these constants and follows along by pre-computing the results can
// prove which memory operations do and do not depend on one another. 
//
// At the end, the logic needed to prove this is more subtle: multiplying
// an unknown value by zero always gives zero. Thus, a smart scheduler can know
// the output of such an instruction. My scheduler does not do this. The
// reference scheduler does not seem to either.

// Storing to disjoint locations.
loadI 344 => r0     // r0=344
loadI 120 => r1     // r1=120
store r0 => r1      // 120: 344
store r1 => r0      // 344: 120
output 120          // "344"
output 344          // "120"

// Adding constants.
add r0, r1 => r1    // r1=464
add r0, r0 => r0    // r0=688
loadI 8 => r2       // r2=8
store r2 => r2      // 8: 8
add r2, r1 => r3    // r3=472
add r2, r0 => r4    // r4=696
sub r0, r2 => r0    // r0=680
add r2, r2 => r2    // r2=16
add r2, r0 => r2    // r2=696
store r1 => r3      // 472: 464
store r3 => r4      // 696: 472
store r0 => r2      // 696: 680 (overwrite!)
output 8            // "8"
output 472          // "464"
output 696          // "680"

// Multiplying constants.
loadI 1392 => r4    // r4=1392        
loadI 3 => r0       // r0=3        
mult r0, r1 => r3   // r3=1392
mult r0, r0 => r2   // r2=9
loadI 4 => r5       // r5=4
mult r2, r5 => r5   // r5=36
store r2 => r5      // 36: 9
add r0, r2 => r2    // r2=12
store r4 => r2      // 12: 1392
store r2 => r4      // 1392: 12        
store r3 => r3      // 1392: 1392 (overwrite!)
output 36           // "9"
output 12           // "1392"
output 1392         // "1392"

// Shifting with constants.
loadI 1 => r5       // r5=1
rshift r1, r5 => r0 // r0=232
lshift r0, r5 => r2 // r2=464
rshift r2, r5 => r1 // r1=232
store r0 => r0      // 232: 232
store r2 => r1      // 232: 464 (overwrite!)
store r1 => r2      // 464: 232
output 232          // "464"
output 464          // "232"

// Subtracting constants.
sub r2, r0 => r1    // r1=232
loadI 32 => r3      // r3=32
sub r0, r3 => r0    // r0=200
sub r2, r0 => r2    // r2=264
store r3 => r1      // 232: 32
store r1 => r2      // 264: 232
output 232          // "32"
output 264          // "232"

// This is the tricky one. We multiply a loaded value by 0.
loadI 1028 => r0    // r0=1028
load r0 => r1       // r1=???
loadI 0 => r3       // r3=0
mult r3, r1 => r1   // r1=0 if smart, otherwise r1=???
add r1, r0 => r1    // r1=1028 if smart, otherwise r1=???
store r1 => r2      // 264: 1028
add r3, r3 => r3    // Kill time.
add r3, r3 => r3
add r3, r3 => r3
add r3, r3 => r3
store r2 => r1      // 1028: 264    A smart scheduler knows r1 != r2 ...
add r3, r3 => r3    // Kill more time.
add r3, r3 => r3
add r3, r3 => r3
add r3, r3 => r3
output 264          // "1028"       ... so it can push this output earlier.
output 1028         // "264"

