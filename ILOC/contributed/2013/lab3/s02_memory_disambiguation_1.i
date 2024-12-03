//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 6767 9001
//
//
// Ian Arnold
//
// Schedulers should recognize that the first block is completely distinct from
// the second one. The only operations between the block that need to be
// strictly ordered are the two outputs.
//
// No inputs are required; should output 6767 then 9001
//

// Here is a minimum dependency graph.
//
//         8
//        / \
//       /   \
//      4     7
//      |    / \
//      3   5   6
//     / \   
//    1   2 

loadI 1000 => r0    // 1
loadI 6767 => r1    // 2
store r1 => r0      // 3
output 1000         // 4

loadI 1004 => r2    // 5
loadI 9001 => r3    // 6
store r3 => r2      // 7
output 1004         // 8
