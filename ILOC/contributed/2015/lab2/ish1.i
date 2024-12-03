//NAME: Itzak Hinojosa
//NETID: ish1
//SIM INPUT:
//OUTPUT: 1 2 6 24 120 720 5040 5913

//Create the first seven factorials and add them together.
//1   2   3    4     5     6      7
//1 + 2 + 6 + 24 + 120 + 720 + 5040 = 5913

//Initialize the first
loadI 0 => r0 			//holds the value of the total sum
loadI 1 => r1

loadI 1000 => r101 		//holds value of first factorial
loadI 1004 => r102		//holds value of second factorial
loadI 1008 => r103		//holds value of third factorial
loadI 1012 => r104		//holds value of fourth factorial
loadI 1016 => r105		//holds value of fifth factorial
loadI 1020 => r106		//holds value of sixth factorial
loadI 1024 => r107		//holds value of seventh factorial

loadI 1028 => r110		//holds the sum of first seven factorials

store r1 => r101
add r1, r0 => r0

//calculate 2!
add r1, r1 => r2 		//create the number 2
mult r1, r2 => r22		//create 2!
store r22 => r102		//store 2!
add r22, r0 => r0 		//keep the sum

//calculate 3!
add r1, r2 => r3
mult r3, r22 => r33
store r33 => r103
add r33, r0 => r0

//calculate 4!
add r1, r3 => r4
mult r4, r33 => r44
store r44 => r104
add r44, r0 => r0

//calculate 5!
add r1, r4 => r5
mult r5, r44 => r55
store r55 => r105
add r55, r0 => r0

//calculate 6!
add r1, r5 => r6
mult r6, r55 => r66
store r66 => r106
add r66, r0 => r0

//calculate 7!
add r1, r6 => r7
mult r7, r66 => r77
store r77 => r107
add r77, r0 => r0

store r0 => r110 		//store the total sum

output 1000
output 1004
output 1008
output 1012
output 1016
output 1020
output 1024
output 1028