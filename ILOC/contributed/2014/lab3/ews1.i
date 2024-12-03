//NAME: Elaine Sulc
//NETID: ews1
//SIM INPUT: -i 1024 3 5
//OUTPUT: 1028 3 1028 1062961 1031
//
//  ews1.i
//
//  This test block tests to make sure that no necessary edges were removed
//  after the dependency graph is simplified. There are stores, loads, and
//  outputs accessing the same locations.
//

loadI 1024            => r1
loadI 1028            => r2
loadI 4               => r3
loadI 2               => r10
add r1, r3            => r3
load r3               => r5
store r3              => r2
output 1028
load r1               => r4
load r2               => r9
output 1024
output 1028
add r3, r4            => r4
store r4              => r3
store r4              => r1
mult r4, r4           => r4
store r4              => r2
output 1028
output 1024

//end of block
