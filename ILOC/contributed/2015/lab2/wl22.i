//NAME: Wanjia Liu
//NETID: wl22
//SIM INPUT: 
//OUTPUT: 0 1 15 25 10 1

// Calculates the Stirling number of the second kind
//
// Stirling number of the second kind:
// This number, denoted as S(n,k), is the number of ways to partition
// a set of n objects into k non-empty subsets.n could be any non negative
// integer and k could be any non negative integer such that k<=n
//
// This program calculates all the stirling numbers with n = 5

// reserved for constants
loadI 0=> r1
loadI 1=> r2

// n=5
loadI 1024 => r50
loadI 1028 => r51
loadI 1032 => r52
loadI 1036 => r53
loadI 1040 => r54
loadI 1044 => r55

// S(n,0) for n from 0 to 5
loadI 0  => r10
loadI 0  => r20
loadI 0  => r30
loadI 0  => r40
store r1  => r50

// S(n,n)=1
loadI 1 => r11
loadI 1 => r22
loadI 1 => r33
loadI 1 => r44
store r2 => r55

// recurence, S(n+1,k)=k*S(n,k)+ S(n,k-1)

// k=1
loadI 1=> r3
mult r3,r11 => r4
add r4,r10 => r21
mult r3,r21 => r4
add r4, r20 => r31
mult r3,r31 => r4
add r4,r30 => r41
mult r3,r41 => r4
add r4,r40 => r5
store r5=> r51

// k=2
loadI 2=> r3
mult r3, r22=> r4
add r4, r21=> r32
mult r3,r32=>r4
add r4,r31=> r42
mult r3,r42=> r4
add r4,r41=>r5
store r5=>r52

// k=3
loadI 3=>r3
mult r3,r33=> r4
add r4, r32=>r43
mult r3,r43=> r4
add r4,r42=>r5
store r5=>r53

// k=4
loadI 4=>r3
mult r3,r44=>r4
add r4,r43=>r5
store r5=>r54

output 1024
output 1028
output 1032
output 1036
output 1040
output 1044
