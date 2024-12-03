//NAME: Karan Thakker
//NETID: krt2
//SIM INPUT: -i 1024 7
//OUTPUT: 47

// Perform some basic arithmetic

loadI 1024 => r0
load r0 => r1
loadI 5 => r2
loadI 4 => r3
loadI 3 => r4

  mult r1, r2 => r2
  mult r4, r3 => r3
  add r3, r2 => r1
store r1 => r0

output 1024
