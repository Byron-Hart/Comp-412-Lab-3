//NAME: Patrick Dunphy
//NETID: ptd3
//SIM INPUT: -i 1024 4 8 16 32
//OUTPUT: 32 32 32 8 4 12 32 8
// a random series of loads, stores, and outputs that tests dependencies
// among memory operations

loadI 1024  => r0
load r0 => r1 //r1 = 4
add r0, r1 => r2 //r2 = 1028
load r2 => r3 //r3 = 8
add r0, r3 => r4 //r4 = 1032
store r1 => r0 //m1024 = 4
store r1 => r2 //m1028 = 4
store r3 => r2 //m1028 = 8
store r3 => r4 //m1032 = 8, stores should be able to execute in sequence
output 1036 //32, should not depend on stores
load r2 => r5 //r5 = 8 depends on stores
add r1, r5 => r6 //r6 = 12
output 1036 //32, should not depend on stores
output 1036 //32, should not depend on stores
output 1028 //8, not 4
output 1024 //4
store r6 => r0 //m1024 = 12
load r4 => r7 //r7 = 8, should not depend on store
output 1024 //12, should depend on store
store r7 => r0 //m1024 = 8, should depend on load
output 1036 //32, should not depend on store
output 1024 //8, should depend on store
