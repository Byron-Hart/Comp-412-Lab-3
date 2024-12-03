//NAME: William Parsley
//NETID: wsp1
//SIM INPUT: -i 2000 1 2 3 4 5
//OUTPUT:
//
//Calculates 296. Supposed to test detection
//of independent instructions. Several instructions
//at the end do not depend on anything and can
//be scheduled during the mults or loads
loadI 2000 => r0
loadI 4 => r1
load r0 => r2
add r1, r0 => r0
load r0 => r3
add r1, r0 => r0
load r0 => r4
add r1, r0 => r0
load r0 => r5
add r1, r0 => r0
load r0 => r6
add r2, r6 => r7
mult r3, r7 => r8
mult r6, r8 => r8
add r2, r7 => r9
mult r3, r9 => r1
add r8, r1 => r1
mult r3, r1 => r1
mult r3, r1 => r1
loadI 1020 => r10
loadI 4 => r11
add r10, r11 => r12
store r1 => r12
output 1024
