//NAME: Ankush Mandal
//NETID: am98
//SIM INPUT: -i 1024 1024 1032 1028
//OUTPUT: 104 108 4120 1008
//Example usage: ./sim -i 1024 1024 1032 1028 <am98.i

//loading addresses
loadI 1024 => r1
loadI 1028 => r2
loadI 1032 => r3


  //loading values
loadI 4 => r6
loadI 8 => r7
loadI 104 => r8
loadI 108 => r9

  //situation where simple calculation with implicit
  //load value reveals r11 and r12 contain two different addresses
  //hence, two stores are independent
load r1 => r10

  sub r10, r7 => r11
  mult r10, r6 => r12

store r8 => r11
store r8 => r12


  //miscalculation in the previous part may result in 
  //assuming two different addresses with different offsets
  //are of different values. But one should not assume such as this may 
  //result in error sometimes. Here is a situation where two different
  //addresses with different offsets are of same value. 
  //conclusion: only loaded values from same address with different 
  //offsets are of different values.
load r2 => r13
load r3 => r14

  add r13, r6 => r13
  add r14, r7 => r14

store r8 => r13
output 1036
store r9 => r14
output 1036


  //deep chain of load & store
  //test how accurately the dependence is analyzed
  //marked stores are independent
load r1 => r15
  add r15, r6 => r16
load r1 => r17
  add r17, r7 => r17
store r16 => r17

load r1 => r18
  sub r18, r7 => r19
load r1 => r20
  add r20, r6 => r20
store r19 => r20

load r20 => r18
  sub r18, r7 => r19
  store r19 => r19 // first store

load r17 => r15
  mult r15, r6 => r16
  add r16, r7 => r16
  store r16 => r16 // second store

output 4120
output 1008
