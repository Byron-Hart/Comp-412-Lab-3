//NAME: Zachary Kingston
//NETID: zkk1
//SIM INPUT: -i 1024 3 -1 -3 4 3 4 3 -2
//OUTPUT: -3 36 3 -4

// Multiply two quaternions q and p together in the order q p.
// A quaternion p is given by p_w + i p_x + j p_y + k p_z.
// Where i, j, and k are basis elements.
//
// Arguments for the simulator are given in order of:
// q_x, q_y, q_z, q_w, p_x, p_y, p_z, p_w.
//
// The formula for the resultant quaternion can be given as follows:
// q p = ( q_v X p_v + q_w p_v + p_w q_v,
//         q_w p_w - q_v . p_v )
//
// Where X is the cross product, . is the dot product, and p_v and q_v are
// the vectors of the imaginary components of the quaternion.
//
// Expanding the terms above allows us to express quaternion
// multiplication as a matrix multiplication, giving this form:
// q p = ( q_x p_w + q_y p_z + q_w p_x − q_z p_y,
//         q_z p_x + q_w p_y + q_y p_w − q_x p_z,
//         q_w p_z + q_z p_w + q_x p_y − q_y p_x,
//         q_w p_w − q_y p_y - q_x p_x - q_z p_z )
//
// This is what is used below to calculate the resultant quaternion.

// Load locations of p.
    loadI 1024 => r0
    loadI 1028 => r1
    loadI 1032 => r2
    loadI 1036 => r3

// Load locations of q.
    loadI 1040 => r4
    loadI 1044 => r5
    loadI 1048 => r6
    loadI 1052 => r7

// Load values of p.
    load r0 => r8  // p_x
    load r1 => r9  // p_y
    load r2 => r10 // p_z
    load r3 => r11 // p_w

// Load values of q.
    load r4 => r12 // q_x
    load r5 => r13 // q_y
    load r6 => r14 // q_z
    load r7 => r15 // q_w

// Calculate intermediate values.
    mult r12, r8  => r16 // q_x p_x
    mult r15, r10 => r30 // q_w p_z
    mult r12, r11 => r19 // q_x p_w
    mult r15, r8  => r28 // q_w p_x
    mult r14, r9  => r25 // q_z p_y
    mult r15, r11 => r31 // q_w p_w
    mult r13, r8  => r20 // q_y p_x
    mult r12, r9  => r17 // q_x p_y
    mult r13, r9  => r21 // q_y p_y
    mult r13, r10 => r22 // q_y p_z
    mult r12, r10 => r18 // q_x p_z
    mult r13, r11 => r23 // q_y p_w
    mult r14, r8  => r24 // q_z p_x
    mult r14, r10 => r26 // q_z p_z
    mult r14, r11 => r27 // q_z p_w
    mult r15, r9  => r29 // q_w p_y

// Calculate (pq)_x
    add r19, r22 => r32
    add r32, r28 => r32
    sub r32, r25 => r32

// Calculate (pq)_y
    add r24, r29 => r33
    add r33, r23 => r33
    sub r33, r18 => r33

// Calculate (pq)_z
    add r30, r27 => r34
    add r34, r17 => r34
    sub r34, r20 => r34

// Calculate (pq)_w
    sub r31, r21 => r35
    sub r35, r16 => r35
    sub r35, r26 => r35

// Load output locations
    loadI 1056 => r36
    loadI 1060 => r37
    loadI 1064 => r38
    loadI 1068 => r39

// Store values.
    store r32 => r36
    store r33 => r37
    store r34 => r38
    store r35 => r39

// Output values.
    output 1056
    output 1060
    output 1064
    output 1068
