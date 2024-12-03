//NAME: Nick Merritt
//NETID: njm3
//SIM INPUT: -i 128 1 2 3 4 5 6 7 8
//OUTPUT: 19 22 43 50
//
// This test block multiplies two 2x2 matrices.
//   
//    A   x   B   =    C
//
//   1 2     5 6     19 22
//   3 4     7 8     43 50
//
// Example usage: -i 128 1 2 3 4 5 6 7 8 < njm3.i
//


// load A
loadI   128             =>      r100
loadI   132             =>      r101
loadI   136             =>      r110
loadI   140             =>      r111
load 	r100		=>	r100
load 	r101		=>	r101
load 	r110		=>	r110
load 	r111		=>	r111

// load B
loadI   144             =>      r200
loadI   148             =>      r201
loadI   152             =>      r210
loadI   156             =>      r211
load 	r200		=>	r200
load 	r201		=>	r201
load 	r210		=>	r210
load 	r211		=>	r211

// calculate C[0,0]
mult    r100, r200      =>      r1
mult    r101, r210      =>      r2
add     r1, r2          =>      r300

// calculate C[0,1]
mult    r100, r201      =>      r1
mult    r101, r211      =>      r2
add     r1, r2          =>      r301

// calculate C[1,0]
mult    r110, r200      =>      r1
mult    r111, r210      =>      r2
add     r1, r2          =>      r310

// calculate C[1,1]
mult    r110, r201      =>      r1
mult    r111, r211      =>      r2
add     r1, r2          =>      r311


loadI   1024            =>  	r0
store   r300            =>  	r0

loadI   1028            =>  	r0
store   r301            =>  	r0

loadI   1032            =>  	r0
store   r310            =>  	r0

loadI   1036            =>  	r0
store   r311            =>  	r0

output 1024
output 1028
output 1032
output 1036










