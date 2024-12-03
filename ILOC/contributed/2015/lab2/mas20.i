//NAME: Matthew Schurr
//NETID: mas20
//SIM INPUT: -i 1024 1 2 3 4 5 6 7 8 9 10
//OUTPUT: 2 10 9 8 7 6 5 4 3 2

// Input: input[10]: an array of ten numbers
// Output: (input[0] + input[0]), input[9], input[8], ..., input[1]

// This test is designed to check whether or not the compiler improves spilling by recognizing that a value loaded
// from a known address can be restored simply by re-loading from that known address. Further, this test checks
// that the allocator is capable of performing that optimization even when STORE instructions appear between the point
// at which the register is spilled and the point at which the register is restored by proving that none of those
// store instructions could possibly have modified that known address.

// If you "pass" this test, your compiler should restore r10 before the 'add r10, r10 => r20' instruction by adding
// something similar to:
//   loadI 1024 => r0
//   load r0 => r10
//   add r10, r10 => r20

// This test works best with small k values (3-6).

// Load a bunch of memory addresses.
loadI 1024 => r0
loadI 1028 => r1
loadI 1032 => r2
loadI 1036 => r3
loadI 1040 => r4
loadI 1044 => r5
loadI 1048 => r6
loadI 1052 => r7
loadI 1056 => r8
loadI 1060 => r9

// Load the values from the addresses 1024-1060.
load r0 => r10
load r1 => r11
load r2 => r12
load r3 => r13
load r4 => r14
load r5 => r15
load r6 => r16
load r7 => r17
load r8 => r18
load r9 => r19

// Store the values back from r11-r19 in reverse order to addreses 1028-1060.
store r11 => r9
store r12 => r8
store r13 => r7
store r14 => r6
store r15 => r5
store r16 => r4
store r17 => r3
store r18 => r2
store r19 => r1

// Hopefully, the above register juggling will have caused r10 to be spilled to memory.
// Now, we perform some math on the contents of r10. This should cause r10 to be restored.
// On a correct implementation, r10 will not have been spilled and will instead be restored by loading from address 1024
// as the compiler was able to prove that the address 1024 could not possibly have been modified between when the value
// was spilled and now.
add r10, r10 => r20
store r20 => r0

// Output the contents of addresses 1024-1060 to check for correctness.
output 1024
output 1028
output 1032
output 1036
output 1040
output 1044
output 1048
output 1052
output 1056
output 1060
