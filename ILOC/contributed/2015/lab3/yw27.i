//NAME: Yue Wang
//NETID: yw27
//SIM INPUT:
//OUTPUT: 2048 2052 2 4
//
// Example usage: ./sim < yw27.i

// Test whether the mechanism to disambiguate memory references
// works correctly

loadI 2048 => r0    // r0 := 2048
loadI 2052 => r1    // r1 := 2052

loadI 2 => r2   // r2 := 2
loadI 4 => r3   // r3 := 4

// test all arithmetic operations
add r2,r2 => r4     // r4 := 2 + 2 = 4
sub r4,r2 => r5     // r5 := 4 - 2 = 2
mult r5,r2 => r6    // r6 := 2 * 2 = 4
lshift r6,r2 => r7  // r7 := 4 * 2^2 = 16
rshift r7,r2 =>r8   // r8 := 16 / 2^2 = 4
loadI 9 => r9     // r9 := 9
lshift r8,r9 => r10  // r10 := 4 * 2^9 = 2048

store r10 => r0      // Mem(2048) := 2048
output 2048         // should output 2048

//do the similar operations with starting value r3 = 4
add r3,r3 => r11        // r11 := 4 + 4 = 8
sub r11,r3 => r12       // r12 := 8 - 4 = 4
mult r12,r3 => r13      // r13 := 4 * 4 = 16
lshift r13,r3 => r14    // r14 := 16 * 2^4 = 256
rshift r14,r3 => r15    // r15 := 256 / 2^4 = 16
loadI 7 => r16          // r16 := 7
lshift r15,r16 => r17   // r17 := 16 * 2^7 = 2048
loadI 4 => r18          // r18 := 4
add r17,r18 => r19      // r19 := 2052

store r19 => r1      // Mem(2052) := 2052
output 2052         // should output 2052

// Now test the mechanism to disambiguate memory references
store r2 => r10     // mem(2048):= 2
// since 2048 does not equal 2052, the scheduler should issue
// the this load right after the previous store
load r19 => r20     // r20 := mem(2052) = 2052
store r3 => r20     // mem(2052):= 4

output 2048         // should output 2
output 2052         // should output 4



