//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 1 2 3
//OUTPUT: 1 2 0 1 2 0 1 2 0 0 1 2 1032
//
//Joel Baranowski
// Test block that tries to catch tricksters
//who set store latency to 0/1 for other stores
//which creates conflicts in read-after-writes.
//Throws in a load for super-tricksters who
//figure out a way to get around the store-only
//case. As far as I know, there is no way to
//get around the store+load case.
//Expected use before scheduling:
//sim -s 3 -i 1024 1 2 3 < s03_the_monster.i
//Expected output:
//1
//2
//0
//1
//2
//0
//1
//2
//0
//0
//1
//2
//1032


loadI 0 => r0
loadI 1032 => r1
store r0 => r1
output 1024
output 1028
output 1032
store r0 => r1
output 1024
output 1028
output 1032
load r1 => r5
add r5, r5 => r5
load r5 => r0
store r0 => r1
output 1024
output 1028
output 1032
store r5 => r1
output 1032
add r1, r0 => r0
store r0 => r1
output 1024
output 1028
output 1032



