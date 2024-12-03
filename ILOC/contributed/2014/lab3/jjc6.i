//NAME: Jesvin Chandy
//NETID: jjc6
//SIM INPUT: -i 2000 1 2 3 4
//OUTPUT: 8024

loadI 2004 => r1
loadI 2008 => r2
add r1, r1 => r1
add r2, r2 => r2
loadI 2024 => r3
add r1, r2 => r4
store r4 => r3
output 2024
