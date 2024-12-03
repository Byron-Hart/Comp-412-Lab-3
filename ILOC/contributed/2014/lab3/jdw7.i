//NAME: Jonathan D. Wilson
//NETID: jdw7
//SIM INPUT:
//OUTPUT: 5
// Testing for the effect of unrelated stores and loads.
// Scheduler will be slow if it does not eliminate these dependencies. 


loadI 1000 => r0
loadI 2000 => r2
loadI 5 => r3
loadI 0 => r4

load r0 => r5 // if this is r1, first add into r1 doesnt work
add r3, r3 => r1  
store r1 => r2

load r0 => r1
add r1, r3  => r1  
store r1 => r2

load r0 => r1
add r1, r3  => r1  
store r1 => r2

load r0 => r1
add r1, r3  => r1  
store r1 => r2

load r0 => r1
add r1, r3  => r1  
store r1 => r2

load r0 => r1
add r1, r3  => r1  
store r1 => r2

load r0 => r1
add r1, r3  => r1  
store r1 => r2

load r0 => r1
add r1, r3  => r1  
store r1 => r2

load r0 => r1
add r1, r3  => r1  
store r1 => r2



output 2000









