//NAME: Eric Lee
//NETID: cl41
//SIM INPUT:
//OUTPUT: 362880 45
// Find 9 factorial

//Compute 9!
loadI 1 =>	r0	//1
loadI 9 =>	r1	//9
loadI 3 =>	r12 //test remat 
loadI 2 =>	r14 //test remat
loadI 2048 => r16
loadI 2052 => r18

sub r1, r0	=>	r2	//9-1=8
mult r1, r2	=>	r3	//9*8=72

sub	r2, r0	=>	r4	//8-1=7
mult r3, r4	=>	r5	//72*7=504

sub	r4, r0	=>	r6	//7-1=6
mult r5, r6	=> 	r7	//504*6=3024

sub	r6, r0	=>	r8	//6-1=5
mult r7, r8	=> 	r9	//3024*5=15120

sub	r8, r0	=>	r10	//5-1=4
mult r9, r10 => r11	//15120*4=60480

mult r11, r12 => r13 //60480*3=181440
mult r13, r14 => r15 //181440*2=362880

add r1, r2  => r17
add r17, r4 => r17
add r17, r6 => r17
add r17, r8 => r17
add r17, r10 => r17
add r17, r12 => r17
add r17, r14 => r17
add r17, r0 => r17


store r15 => r16
output 2048

store r17 => r18
output 2052





