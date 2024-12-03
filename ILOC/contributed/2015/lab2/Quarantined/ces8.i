//NAME: Christine Shaw
//NETID: ces8
//SIM INPUT: -i 2048 3 5 10
//OUTPUT: 38 216

//Starts with 3 values in memory
//Tests handling of an undefined register as well as variations in spacing
loadI    2048 => r0
loadI    2052    => r1
loadI 2056 =>    r2
loadI 2060 => r3
loadI 20 => r7

  load r0 => r0
add r0,   r0 => r4
add r4, r5 => r4
  mult r4, r4 => r8
  mult r8, r4 => r8
loadI 2064 => r9
loadI 1 => r0
lshift r4, r0 => r5

load r1 => r1
load r2 => r2
  mult r1, r2 => r6
  sub r6, r5 => r7
store     r7 => r3
store r8 =>     r9
output 2060
output 2064

