//NAME: Dingqiao Wen
//NETID: dw20
//SIM INPUT: -i 1024 1 2 3 4 5 6 7 0
//OUTPUT: 2739128
//
//COMP 412 Lab 1, 2015 FALL
//Implement a Octal to Decimal Converter
//The octal number is located from 1024 to 1052, one digit each
//The output is an decimal integer

loadI   1024    =>  r0
load    r0      =>  r1
loadI   1028    =>  r2
load    r2      =>  r3
loadI   1032    =>  r4
load    r4      =>  r5
loadI   1036    =>  r6
load    r6      =>  r7
loadI   1040    =>  r8
load    r8      =>  r9
loadI   1044    =>  r10
load    r10	=>  r11
loadI   1048    =>  r12
load    r12	=>  r13
loadI   1052    =>  r14
load    r14	=>  r15

loadI	8	=>  r16
   
mult    r1, r16	=>  r1
add	r1, r3	=>  r1
mult    r1, r16 =>  r1
add     r1, r5  =>  r1
mult    r1, r16 =>  r1
add     r1, r7  =>  r1
mult    r1, r16 =>  r1
add     r1, r9  =>  r1
mult    r1, r16 =>  r1
add     r1, r11 =>  r1
mult    r1, r16 =>  r1
add     r1, r13 =>  r1
mult    r1, r16 =>  r1
add     r1, r15 =>  r1

store   r1      =>  r0
output  1024
