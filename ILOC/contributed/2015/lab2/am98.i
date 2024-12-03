//NAME: Ankush Mandal
//NETID: am98
//SIM INPUT: -i 104 1 2 3 4 5 6
//OUTPUT: 264 
//Example usage: ./sim -i 104 1 2 3 4 5 6 <am98.i

loadI 104=>r1 //checks whether accepts assignment without space
    loadI 108 => r2 //checking whether accepts space before an iloc instruction
loadI 112 => r3
loadI 116 => r4
loadI 120 => r5
loadI 124 => r6
loadI 2 => r7

load r6 => r8 // load backward
load r5 => r9
load r4 => r10
load r3 => r11

sub r8 , r11 => r12
sub r8 , r10 => r13
sub r8 , r9 => r14

store r9 => r4 //making the mem dirty

load r1 => r15 //load forward
load r0002 => r0 //checking whether takes r0002 as r2

add r12,r3 => r16 //checking whether accepts register names without spaces
                //checking rematerializable velue loading for r3
lshift r0 , r7 => r17 //first use of r0

load r4 => r4 //checking reloading of dirty value

add r4 , r17 => r4
add r4 , r16 => r4
add r4 , r15 => r4
add r4 , r14 => r4
add r4 , r13 => r4

mult r0 , r4 => r4 //checking loading of clean value

loadI 1024 => r0
store r4 => r0

output 1024
