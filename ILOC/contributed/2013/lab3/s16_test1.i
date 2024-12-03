//NAME: COMP412
//NETID: comp412
//SIM INPUT:
//OUTPUT: 12 48
//
// This tests for the use of functional units, so if the operation
// currently running does not affect the requested op, then the
// functional unit can start the operation.
// More specifically, mult should be able to start right after another
// if and only if they do not depend on each other
// example usage: ./sim -s 3 < s16_test1.i
// 

loadI 3 => r0
loadI 4 => r1
mult r0, r1 => r2
mult r0, r1 => r3
mult r0, r1 => r4
mult r0, r1 => r5

loadI 1024 => r20
loadI 1024 => r21
store r5 => r20
add r4,r2 => r8
output 1024
add r8,r8 => r8
store r8 => r21
output 1024

// It should look something like
//[loadI	3		=>	r0		;	loadI	4		=>	r1]
//[loadI	1024		=>	r6	;	mult	r0,	r1	=>	r5]
//[loadI	1024		=>	r7	;	mult	r0,	r1	=>	r2]
//[nop				  			;	mult	r0,	r1	=>	r4]
//[store	r5		=>	r6		;	mult	r0,	r1	=>	r3]
//[nop				 			;	nop				  ]
//[add	r4,	r2	=>	r8			;	nop				  ]
//[add	r8,	r8	=>	r9			;	nop				  ]
//[nop				  			;	nop				  ]
//[store	r9		=>	r7		;	output	1024			  ]
//[nop				  			;	nop				  ]
//[nop				  			;	nop				  ]
//[nop				  			;	nop				  ]
//[nop				  			;	nop				  ]
//[output	1024			  	;	nop				  ]
