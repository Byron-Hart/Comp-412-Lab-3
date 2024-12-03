//NAME: Yu Zhuang
//NETID: yz75
//SIM INPUT: -i 2048 8 128 4 2
//OUTPUT: 1024 1024 1024 1024 44444
//
//To test the situation when the clean value that would get dirty after store to known or unknown address
//For computed store address, some allocator discards this and the value is stored to an unused address luckily.
//So they are fine. But this block will create a computed address that is able to override the clean values.
//Example usage: ./sim -i 2048 8 128 4 2 < yz75.i

	loadI 	2048 	=> r10      //r10 = 2048
	load	r10	=> r1           //r1 = 8

    loadI   2052    => r11      //r11 = 2052
    load    r11  =>  r2         //r2 = 128

    loadI   2056    => r12      //r12 = 2056
    load    r12  =>  r3         //r3 = 4

    loadI   2060    => r13      //r13 = 2060
    load    r13  =>  r4         //r4 = 2

    mult    r1,r2   => r5       //r5 = 1024
    store   r5  =>  r13         //2060: 13 -> 1024

    add     r10, r1  => r6      //r6 = 2056
    store   r6  =>  r12         //2056: 13 -> 2056

    store   r5  => r6           //all get dirty as store to an address of computation 2056: 2056 -> 1024

    loadI 	2060 	=> r14      //r14 = 2060
    load	r14	=> r9           //new clean value r9 = 1024

    nop 

    //uses the registers that previously became dirty
    mult    r9,r4   => r15

    add r1,r15  => r7
	add	r3,r9	=> r8
    sub r8,r3   => r16
    sub r7,r3   => r17
    add r7,r9   => r18
    add r18,r9  => r19
    add r19,r18 => r20
    add r20,r19 => r21
    add r21,r18 => r22
    add r22,r21 => r23
    add r10,r23 => r24
    add r11,r22 => r25
    add r24,r25 => r26
    add r14,r3  => r27
    loadI 320 => r28            //just to create 1024 1024 1024 1024 44444
    add r28,r26 => r29
    store   r29    =>  r27
    store   r16    =>  r17
    nop 
    store   r16    =>  r10
    nop 

	output 2048

    output 2052

    output 2056

    output 2060

    output 2064
//
