//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 10 20 30 40 50
//OUTPUT: 10 2048 30
//
// s50_trickyRename
//brief : test if the schedule can handle non-neccessary dependency 
//	caused by reuse of register name.
// simulator: ./sim -s 3 -i 1024 10 20 30 40 50 < s50_trickyRename.i

loadI 1024 => r100
loadI 1028 => r255
add r100, r100 => r100
store r100 => r255

loadI 1024 => r255
loadI 1028 => r100
loadI 1032 => r223
loadI 1036 => r00
loadI 1040 => r223

store r255 => r00
store r223 => r223

output 1024
output 1028
output 1032
