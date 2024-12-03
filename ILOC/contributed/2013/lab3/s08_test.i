//NAME: COMP412
//NETID: comp412
//SIM INPUT: -i 1024 0 1
//OUTPUT: 0
//
// Comp 412 Lab #3 Test Block
//
// Modified Fibonacci numbers for only the first number.
// Takes as input the first two numbers in the series at memory
// locations 1024 and 1028.  These would usually be 0 and 1.
// Usage before scheduling: ./sim -s 3 -i 1024 0 1 < s08_test.i
//
// Tests register renaming. Specifically, store r2 => r14 can be
// renamed to store r3 => r6 then store r5 => r6 when store r3 => r6
// would have been the correct instruction.

    loadI   0       => r0
    loadI   4       => r1
    loadI   1024    => r2
    load    r2      => r2
    loadI   1028    => r3
    load    r3      => r3
    loadI   2000    => r14
    store   r2      => r14
    output  2000
