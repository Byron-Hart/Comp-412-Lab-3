//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1024 1024
//OUTPUT: 1024 1024 4 1024
//
// s53_test.i
// usage: ./sim -s 3 -i 1024 1024 1024 < s53_test.i

loadI	1024	=> r1
load	r1	=> r10
loadI   4    => r2
add	r10,r2	=> r11
load r10   => r12
load r12   =>  r2
load r11   =>  r4
add r2, r4 =>  r4
output 1024
output 1028
store   r4 => r2 
store	r11	=> r1
load   r12   => r10
sub	r10,r1	=> r3
store r3 => r12
output	1024
output  1028

