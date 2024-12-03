//NAME: Itzak Hinojosa
//NETID: ish1
//SIM INPUT:
//OUTPUT: 8 64
//
//
// Usage before scheduling: ./sim -s 3 < report01.i
//
// Expected output: 8 64
//
// This testblock tests many features of ILOC code
// that is left out from the other report blocks such as
// lshift, rshift, and nop. It also tests to make sure
// that registers that are created and don't lead anywhere
// do not interfere with the actual functunality of the
// scheduled code.
//


//This is the initial store to keep track of
loadI 8	 => r1
loadI 2000 => r2

//Define a bunch of registers that don't go anywhere
add r1, r2	=> r03
mult r1, r1 => r4
lshift r1, r1 => r5
rshift r2, r1 => r6

//more registers that don't go anywhere
sub r2, r3 => r72
lshift r4, r3 => r69
mult r3, r2 => r12
nop 
nop 
mult r4, r1 => r42
add r42, r2 => r43
nop 
lshift r1, r3 => r43
rshift r1, r3 => r43

//Finally create the results you want
mult r1, r1 => r16 	//r16 holds 64
store r1 => r02 		//r2 holds 2000
store r16 => r3 	//r3 holds 2008

//and then cretae more junk registers
add r43, r4 => r56
add r69, r6 => r22
mult r22, r1 => r00034
lshift r12, r43 => r41
sub r22, r072 => r49
nop 
rshift r43, r1 => r30
nop 
lshift r12, r56 => r11
add r11, r43 => r10
sub r10, r49 => r56
sub r56, r49 => r10
add r01, r49 => r15

//Then change the registers that
//were stored and mess with them
//to ensure values stay the same
add r2, r3 => r3
mult r3, r2 => r2
sub r2, r15 => r2
add r1, r1 => r1 	//r1 now holds 16
store r1 => r3 		//attempting a bad store

output 2000
output 2008
