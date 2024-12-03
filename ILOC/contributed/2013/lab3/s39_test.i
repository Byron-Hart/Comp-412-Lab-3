//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 11
//OUTPUT: 11 3 7 5
//
// Custom Math procedure to test scheduling

// Run using ./sim -s 3 -i 1024 N < s39_test.i

loadI 1020 => r90
loadI 1024 => r99
load r99 => r2

loadI 1 => r0
loadI 2 => r1
loadI 5 => r3
loadI 6 => r4
loadI 8 => r5

load r90 => r5

loadI 2 => r6
loadI 3 => r7
loadI 5 => r8
loadI 9 => r9

loadI 1024 => r91

store r2 => r91

loadI 1036 => r92
loadI 1048 => r93
loadI 1060 => r94

add r0,r3 => r10
add r2,r5 => r11

store r7 => r92

add r6,r3 => r4
add r4,r5 => r9

store r9 => r93

// redundant repetition block should demonstrate easy packing
add r8,r3 => r10
mult r8,r3 => r10
sub r8,r3 => r10
add r8,r3 => r10
add r8,r3 => r10

sub r8,r3 => r10
add r8,r3 => r10
mult r8,r3 => r10
add r8,r3 => r10
add r8,r3 => r11
mult r8,r3 => r11
sub r8,r3 => r11
add r8,r3 => r11
add r8,r3 => r11

sub r8,r3 => r11
add r8,r3 => r11
mult r8,r3 => r11
add r8,r3 => r11
add r8,r3 => r13
mult r8,r3 => r13
sub r8,r3 => r13
add r8,r3 => r13
add r8,r3 => r13

sub r8,r3 => r13
add r8,r3 => r13
mult r8,r3 => r13
add r8,r3 => r13

// arithmetic routine
mult r9,r5 => r31
add r9,r5 => r32
sub r31,r32 => r33
sub r32,r31 => r34
add r34,r5 => r36
add r9,r33 => r37
add r1,r37 => r89
add r89,r31 => r89
add r89,r32 => r89
add r89,r33 => r89
add r89,r34 => r89
sub r89,r32 => r89
sub r89,r5 => r89
add r89,r34 => r89
mult r89,r37 => r11
add r11,r3 => r11
add r11,r5 => r11

store r11 => r94

output 1024
output 1036
output 1048
output 1060
