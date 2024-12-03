//NAME: Juliana Gomez
//NETID: jmg9
//SIM INPUT: 
//OUTPUT: 4096 4096

// Usage before scheduling: ./sim -s 3 < jmg9.i
// Operation implemented: 2^2 * 2^10 = 2^(2+10) = 2^12 = 4096
// Computation tests scheduler's output matches unscheduled output correctly
// Requires renaming of register in my scheduler, checks to see it's working correctly

loadI 0 => r0
loadI 1 => r1
loadI 0 => r5
loadI 1 => r6
loadI 1024 => r3
loadI 2048 => r8

// first compute 2^2
add r5, r6 => r5
lshift r6, r6 => r7
add r5, r7 => r5
lshift r7, r6 => r7

// compute 2^10 (checks to see if renamed registers correctly)
add r0, r1 => r0
lshift r1, r1 => r2
add r0, r2 => r0
lshift r2, r1 => r2
add r0, r2 => r0
lshift r2, r1 => r2
add r0, r2 => r0
lshift r2, r1 => r2
add r0, r2 => r0
lshift r2, r1 => r2
add r0, r2 => r0
lshift r2, r1 => r2
add r0, r2 => r0
lshift r2, r1 => r2
add r0, r2 => r0
lshift r2, r1 => r2
add r0, r2 => r0
lshift r2, r1 => r2
add r0, r2 => r0
lshift r2, r1 => r2

mult r2, r7 => r2       // compute 2^2 x 2^10 (store in 1024)
store r2 => r3

loadI 4096 => r9
store r9 => r8          // store 2^12 = 4096 in r8 (2000)

output 1024             // both answers should match
output 2048
