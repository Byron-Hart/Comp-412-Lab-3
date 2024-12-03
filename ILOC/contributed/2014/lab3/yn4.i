//NAME: Sean Niu
//NETID: yn4
//SIM INPUT: -i 3000 8 4
//OUTPUT: 6 3 7 11 3008 3008

// Test renaming and fake dependencies. The adds should only depend on the
// previous adds.
loadI 1     => r1 // 1
loadI 1     => r2
add r1, r2  => r1 // 2
add r1, r2  => r1 // 3
add r1, r2  => r1 // 4
add r1, r2  => r1 // 5
add r1, r2  => r1 // 6
loadI 1000  => r0
store r1    => r0
output 1000       // print 6

// Test known different constants for loads, stores, and outputs.
// Look at Graphviz output see if the dependencies have been removed.
// It should look like 3 separate branches, connected by the outputs.
loadI 2000  => r10
loadI 2004  => r20
loadI 2008  => r30

loadI 1     => r11
loadI 3     => r21
loadI 5     => r31

loadI 2     => r12
loadI 4     => r22
loadI 6     => r32

add r11, r12 => r13
add r21, r22 => r23
add r31, r32 => r33

store r13   => r10
store r23   => r20
store r33   => r30

output 2000 // print 3
output 2004 // print 7
output 2008 // print 11


// Test variable values, unknown loads, stores, and outputs
loadI 3000  => r40
loadI 3004  => r50

// These should depend on each other instead of looking like branches
load r40    => r41
load r50    => r51

add r40, r41 => r42
add r50, r51 => r52

store r42   => r40
store r52   => r50

output 3000 // print 3008
output 3004 // print 3008
