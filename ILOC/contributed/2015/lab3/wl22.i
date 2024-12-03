//NAME: Wanjia Liu
//NETID: wl22
//SIM INPUT: -i 2000 8 88 888
//OUTPUT: 0 88 8 4 32 40 40
//
// COMP 412, Fall 2015
// Report block that focus tests on efficently schedule stores prior
// actual use of the memory location, serialization of output, implicit
// value dependency aroud store/load.

// Normal dependency
loadI 4 => r0
loadI 8 => r1
loadI 2000 => r10
loadI 2004 => r11
loadI 1996 => r13

add  r0, r0 => r2
mult r0, r1 => r3


// ******** store  and output related test **********
// output a block that is not used ever , could possibly execute earlier
output 2012

// store, should execute earlier than add and mult to avoid high waiting time
store r0 => r10

// output that could execute earlier 
output 2004

// multiple same store, should execute consecutively to avoid unncessary wait
store r1 => r10

// serialization check
output 2000

store r0 => r10

// serialization check, same address multiple value, should output correctly
output 2000

// should create several nops between current section and next section
store r3 => r10
store r2 => r11

// useless nop that should be discarded
nop 
nop 
nop 
nop 
nop 
nop 
nop 
nop 

// **********load related test *********
// implicit value dependency in memory, same address as previous store, should wait previous store complete
load r10 => r4

// same load, can be executed consecutively
load r10 => r4

// create same value for r6 and r7, chould be detected by compiler
add r4, r0 => r6
add r6, r0 => r6 
add r4, r1 => r7

output 2000
// r12 has same value as r10, store in both, should detect dependency and avoid wrong scheduling
add r1, r13 => r12

store r6 => r10
output 2000

// store to same location, should detect dependency here
store r7 => r12
output 2000

 
