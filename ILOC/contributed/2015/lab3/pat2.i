//NAME: DiffSq
//NETID: pat2
//SIM INPUT: -i 2000 5 6
//OUTPUT: 4 2000 2000
//This computes an expression which algebraically is clearly 0 but
//which is hard to obtain with local value numbering. If the scheduler
//is able to prove that r8=0, then the first and the 3rd output will
//not conflict with the stores.

loadI 2000 => r10
loadI 2004 => r11

loadI 4 => r12
store r12 => r10 // Inital value
sub r11, r12 => r13
load r13 => r14

load r10 => r0
load r11 => r1

sub r14, r1 => r2
add r0, r1 => r3
mult r2, r3 => r4
mult r0, r0 => r5
mult r1, r1 => r6

sub r6, r5 => r7
add r7, r4 => r8 // Algebraically, r8 must equal 0
store r8 => r8
output 2000
store r10 => r10
add r8, r8 => r9
output 2000
store r9 => r9 // ... but if you don't know that, these will conflict.
output 2000

