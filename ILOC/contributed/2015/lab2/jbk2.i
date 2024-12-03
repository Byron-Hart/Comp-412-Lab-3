//NAME: Jesse Kimery
//NETID: jbk2
//SIM INPUT:
//OUTPUT: 1 0 1 0 5 0 61 0 1385 0 50521 0 2702765 0 199360981

//This block requires no user input.  It prints the absolute values of
//the first 15 Euler numbers (trying to print more causes overflow errors).
//These are constant multipliers in the Taylor series expansions of the 
//secant and hyperbolic secant functions.  They are also the "zigzag 
//numbers" for even n--that is, the number of permutations of the integers 
//from 1 to n such that a_(j - 1) > a_j < a_(j + 1) or vice versa for all j.

//The block uses the zigzag triangle addition technique to calculate
//the nonzero Euler numbers and output them.  The left edge of this
//triangle is the Euler numbers.  In visual form, this is
//                            1
//                        0   ->  1
//                   1   <-   1   <-   0
//               0   ->   1   ->   2   ->   2
//          5   <-  5   <-   4   <-   2    <-   0
//      0   ->   5  ->   10   ->   14  ->   16   ->  16
//
//I learned about this algorithm and sequence from "Some Very
//Interesting Sequences" by John H. Conway and Tim Hsu
//(http://www.math.sjsu.edu/~hsu/pdf/sequences.pdf)


//Filling in the top of the triangle
loadI 1 => r0

//Filling in line 1
loadI 0 => r1
add r1 , r0 => r2

//Filling in line 2
loadI 0 => r3
add r3 , r2 => r4
add r4 , r1 => r5

//Filling in line 3
loadI 0 => r6
add r6 , r5 => r7
add r7 , r4 => r8
add r8 , r3 => r9

//Filling in line 4
loadI 0 => r10
add r10 , r9 => r11
add r11 , r8 => r12
add r12 , r7 => r13
add r13 , r6 => r14

//Filling in line 5
loadI 0 => r15
add r15 , r14 => r16
add r16 , r13 => r17
add r17 , r12 => r18
add r18 , r11 => r19
add r19 , r10 => r20

//Filling in line 6
loadI 0 => r21
add r21 , r20 => r22
add r22 , r19 => r23
add r23 , r18 => r24
add r24 , r17 => r25
add r25 , r16 => r26
add r26 , r15 => r27

//Filling in line 7
loadI 0 => r28
add r28 , r27 => r29
add r29 , r26 => r30
add r30 , r25 => r31
add r31 , r24 => r32
add r32 , r23 => r33
add r33 , r22 => r34
add r34 , r21 => r35

//Filling in line 8
loadI 0 => r36
add r36 , r35 => r37
add r37 , r34 => r38
add r38 , r33 => r39
add r39 , r32 => r40
add r40 , r31 => r41
add r41 , r30 => r42
add r42 , r29 => r43
add r43 , r28 => r44

//Filling in line 9
loadI 0 => r45
add r45 , r44 => r46
add r46 , r43 => r47
add r47 , r42 => r48
add r48 , r41 => r49
add r49 , r40 => r50
add r50 , r39 => r51
add r51 , r38 => r52
add r52 , r37 => r53
add r53 , r36 => r54

//Filling in line 10
loadI 0 => r55
add r55 , r54 => r56
add r56 , r53 => r57
add r57 , r52 => r58
add r58 , r51 => r59
add r59 , r50 => r60
add r60 , r49 => r61
add r61 , r48 => r62
add r62 , r47 => r63
add r63 , r46 => r64
add r64 , r45 => r65

//Filling in line 11
loadI 0 => r66
add r66 , r65 => r67
add r67 , r64 => r68
add r68 , r63 => r69
add r69 , r62 => r70
add r70 , r61 => r71
add r71 , r60 => r72
add r72 , r59 => r73
add r73 , r58 => r74
add r74 , r57 => r75
add r75 , r56 => r76
add r76 , r55 => r77

//Filling in line 12
loadI 0 => r78
add r78 , r77 => r79
add r79 , r76 => r80
add r80 , r75 => r81
add r81 , r74 => r82
add r82 , r73 => r83
add r83 , r72 => r84
add r84 , r71 => r85
add r85 , r70 => r86
add r86 , r69 => r87
add r87 , r68 => r88
add r88 , r67 => r89
add r89 , r66 => r90

//Filling in line 13
loadI 0 => r91
add r91 , r90 => r92
add r92 , r89 => r93
add r93 , r88 => r94
add r94 , r87 => r95
add r95 , r86 => r96
add r96 , r85 => r97
add r97 , r84 => r98
add r98 , r83 => r99
add r99 , r82 => r100
add r100 , r81 => r101
add r101 , r80 => r102
add r102 , r79 => r103
add r103 , r78 => r104

//Filling in line 14
loadI 0 => r105
add r105 , r104 => r106
add r106 , r103 => r107
add r107 , r102 => r108
add r108 , r101 => r109
add r109 , r100 => r110
add r110 , r99 => r111
add r111 , r98 => r112
add r112 , r97 => r113
add r113 , r96 => r114
add r114 , r95 => r115
add r115 , r94 => r116
add r116 , r93 => r117
add r117 , r92 => r118
add r118 , r91 => r119

//Store the registers containing the Euler numbers
loadI 0 => r120
store r0 => r120
loadI 4 => r120
store r1 => r120
loadI 8 => r120
store r5 => r120
loadI 12 => r120
store r6 => r120
loadI 16 => r120
store r14 => r120
loadI 20 => r120
store r15 => r120
loadI 24 => r120
store r27 => r120
loadI 28 => r120
store r28 => r120
loadI 32 => r120
store r44 => r120
loadI 36 => r120
store r45 => r120
loadI 40 => r120
store r65 => r120
loadI 44 => r120
store r66 => r120
loadI 48 => r120
store r90 => r120
loadI 52 => r120
store r91 => r120
loadI 56 => r120
store r119 => r120

//Output the stored values
output 0
output 4
output 8
output 12
output 16
output 20
output 24
output 28
output 32
output 36
output 40
output 44
output 48
output 52
output 56
