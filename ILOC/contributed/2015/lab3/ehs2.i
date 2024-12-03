//NAME: Ethan Steinberg
//NETID: ehs2
//SIM INPUT:
//OUTPUT: 9 10

// This test block attempts to test my allocators ability to keep track of constants
// even across loads and stores.

// This allows my scheduler to avoid unnessary load-store and store-store dependencies in several cases.

// Other than testing this feature, this test block does not really perform any special computation.

// Where to store the first address
loadI 1000 => r1

// The first address
loadI 100 => r2

store r2 => r1

// Where to store the second address
loadI 1004 => r3

// The second address
loadI 104 => r4

store r4 => r3


// Get the first address back

load r1 => r5

// Get the second address back

load r3 => r6


// I should be able to store independantly to these addresses.

loadI 9 => r10
loadI 10 => r11

store r10 => r5
store r11 => r6

output 100
output 104
