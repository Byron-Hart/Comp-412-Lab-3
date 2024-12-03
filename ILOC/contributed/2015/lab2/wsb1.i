//NAME: Wilson Beebe
//NETID: wsb1
//SIM INPUT: -i 1024 52 54 56 49
//OUTPUT: 4681

// Simple implentation of the C atoi function for 4 digit positive numbers


loadI   48      => r0 // ASCII value of 0
loadI   0       => r1 // Counter for result
loadI   1024    => r2 // Register which will be used to hold the thousandss place of the input
loadI   1028    => r3 // Register which will be used to hold the hundreds place of the inut
loadI   1032    => r4 // Register which will be used to hold the tens place of the input
loadI   1036    => r5 // Register which will be used to hold the ones place of the input
loadI   10      => r6 // Register which will be used to hold multiplier constant
loadI   1040    => r7 // Memory location for output

load    r2      => r2  
sub     r2, r0  => r2 // Convert digit from ascii
add     r2, r1  => r1 // Add digit to result

load    r3      => r3
sub     r3, r0  => r3 // Convert digit from ascii
mult    r1, r6  => r1 // Shift result by multiplying by 10
add     r3, r1  => r1 // Add digit to result

load    r4      => r4
sub     r4, r0  => r4 // Convert digit from ascii
mult    r1, r6  => r1 // Shift result by mutliplying by 10
add     r4, r1  => r1 // Add digit to result

load    r5      => r5
sub     r5, r0  => r5 // Convert digit from ascii 
mult    r1, r6  => r1 // Shift result by multiplying by 10
add     r5, r1  => r1 // Add digit to result

store   r1      => r7
output  1040
