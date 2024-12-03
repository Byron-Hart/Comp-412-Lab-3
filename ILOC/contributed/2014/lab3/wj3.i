//NAME: Wenzhe Jiang
//NETID: wj3
//SIM INPUT: -i 1024 1 2
//OUTPUT: 3077

//The wj3.i file is for testing the simplifier of the graph. 
//Without simplifier, load and store will preserve their relative position. 
//However, the simplifier eliminates this limitation after detecting that the load (line 18) and store (line 17) are decoupled. 
//Run the program with wj3.i as input. 
//The generated code will put load operation (line 18) before the store operation (line 17) to improve efficiency.


loadI 1024 => r1
loadI 1028 => r2
add r1, r2 => r3
add r1, r3 => r4
store r3 => r2
load r1 => r5
add r4, r5 => r6
store r6 => r1
output 1024


