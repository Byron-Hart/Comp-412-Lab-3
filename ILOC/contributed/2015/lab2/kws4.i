//NAME: Kevin Smith
//NETID: kws4
//SIM INPUT:
//OUTPUT: 1597 4181 28657 514229 1346269 24157817 165580141
//
//Output Explanation: Calculates the values of the elements of the
//Fibonacci sequence whose indexes are equal to the values of the
//sequence of seven consecutive primes starting with the seventh prime.
//(No input is required.)


        loadI   1             => r1
        loadI   1             => r2
        
        add     r1, r2        => r3
        add     r2, r3        => r4
        add     r3, r4        => r5
        add     r4, r5        => r6
        add     r5, r6        => r7
        add     r6, r7        => r8
        add     r7, r8        => r9
        add     r8, r9        => r10
        add     r9, r10       => r11
        add     r10, r11      => r12
        add     r11, r12      => r13
        add     r12, r13      => r14
        add     r13, r14      => r15
        add     r14, r15      => r16
        add     r15, r16      => r17
        add     r16, r17      => r18
        add     r17, r18      => r19
        add     r18, r19      => r20
        add     r19, r20      => r21
        add     r20, r21      => r22
        add     r21, r22      => r23
        add     r22, r23      => r24
        add     r23, r24      => r25
        add     r24, r25      => r26
        add     r25, r26      => r27
        add     r26, r27      => r28
        add     r27, r28      => r29
        add     r28, r29      => r30
        add     r29, r30      => r31
        add     r30, r31      => r32
        add     r31, r32      => r33
        add     r32, r33      => r34
        add     r33, r34      => r35
        add     r34, r35      => r36
        add     r35, r36      => r37

        // Taking a break to store some values...
        loadI 1024 => r99
        store r17 => r99
        loadI 1028 => r100
        store r19 => r100
        loadI 1032 => r101
        store r23 => r101
        loadI 1036 => r102
        store r29 => r102
        loadI 1040 => r103
        store r31 => r103
        loadI 1044 => r104
        store r37 => r104

        // Back to the grind...
        add r36, r37 => r38
        add r37, r38 => r39
        add r38, r39 => r40
        add r39, r40 => r41


        loadI 1048 => r105
        store r41 => r105

        output 1024
        output 1028
        output 1032
        output 1036
        output 1040
        output 1044
        output 1048
