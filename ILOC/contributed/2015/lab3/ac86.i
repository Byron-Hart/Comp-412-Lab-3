//NAME: Arghya Chatterjee
//NETID: ac86
//SIM INPUT: -i 1000 8 9 0 0 10
//OUTPUT: 9 0 0 10 27
//

  loadI 1000 => r0    
  load r0 => r1       
  loadI 1004 => r2
  load r2 => r2    
  loadI 1008 => r3
  loadI 1012 => r4
  loadI 1016 => r5
  load r5 => r5
  loadI 1020 => r7
  add r1, r1 => r3
  add r1, r2 => r4

  add r4, r5 => r5

  store r5 => r7

  output 1004        
  output 1008        
  output 1012
  output 1016        
  output 1020
