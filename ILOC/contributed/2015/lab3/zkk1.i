//NAME: Zachary Kingston
//NETID: zkk1
//SIM INPUT: -i 1024 1 2 3 4 5 6 7 8 9
//OUTPUT: 1 4 7 2 5 8 3 6 9

// This program loads a 3x3 matrix provided in row-major order
// starting at address 1024, transposes its values in-place, and then
// outputs the transposed matrix in row-major order. To efficiently
// schedule this program, the scheduler must disambiguate memory
// references and find explicit dependencies between certain memory
// reads and writes. Done without any optimization, the long chain of
// loads and stores is incredibily inefficient.

// Calculate address locations of each matrix entry.
    loadI 4 => r0
    loadI 1024 => r11

// An integer overflow trick to verify constant propagation is being
// done in a way that accurately simulates how the ILOC virtual
// machine would calculate values. The value in r1 should be 4 by the
// end of the sequence.
    mult r11, r11 => r1
    mult r1, r1 => r1
    add r1, r0 => r1

    add r0, r11 => r12
    add r0, r12 => r13

    add r0, r13 => r21
    add r0, r21 => r22
    add r0, r22 => r23

    add r1, r23 => r31
    add r1, r31 => r32
    add r1, r32 => r33

// Begin transpose of the matrix.
    load r11 => r111
    store r111 => r11

    load r12 => r121
    load r21 => r211

    store r121 => r21
    store r211 => r12

    load r22 => r221
    store r221 => r22

    load r13 => r131
    load r31 => r311

    store r131 => r31
    store r311 => r13

    load r33 => r331
    store r331 => r33

    load r23 => r231
    load r32 => r321

    store r231 => r32
    store r321 => r23

// Output transposed matrix.
    output 1024
    output 1028
    output 1032
    output 1036
    output 1040
    output 1044
    output 1048
    output 1052
    output 1056
