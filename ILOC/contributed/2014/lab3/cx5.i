//NAME: Chao Xu                                                                 
//NETID: cx5
//SIM INPUT: -i 1024 17 2 43                                                   
//OUTPUT: 43 43                                                
//
//The program repeatedly stores on 1028 for 3 times, then repeatedly stores on 
//1024 for 2 times. In the middle, it outputs on 1032 twice.
//This programs tests if the scheduler issues "store"s compactly. Both 
//my scheduler and the reference scheduler will issue the #1 and #2 "store" 
//back-to-back, but the reference scheduler does no schedule #4 and #6 "store"
//back-to-back, becuase it thinks #6 depends on the output at #5 (strange, 
//I thought lab3_ref would simplify graph by tracking loadI values), and #5 
//depends on #3. The output of lab3_ref takes 20 cycles to run, while the output//of my scheduler takes 16 cycles.

loadI 4 => r1
loadI 20 => r2
loadI 1024 => r3
add r1, r3 => r4
store r2 => r4  //#1 address is NOT known
store r2 => r4  //#2 address is NOT known
output 1032     //address is known as 1032
store r2 => r4  //#3: address is NOT known if the compiler does not do 
                //arithmetics on values from loadI
store r2 => r3  //#4: address is known as 1024, derived by loadI
output 1032     //#5: address is known as 1032
store r2 => r3  //#6: address is known as 1024, derived by loadI
                                  
