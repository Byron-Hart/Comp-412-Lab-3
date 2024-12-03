//NAME: Brian Lee
//NETID: bsl3
//SIM INPUT:
//OUTPUT: 217966 1103765

// Calculates the total price of a typical college student's Amazon cart
// in cents, then changes the quantity of certain items and re-outputs.

// To be completely honest I'm not sure what this tests, but my scheduler matches
// the reference without the re-calculation and is behind with it, so clearly
// there is some important optimization going on here.

// Iniitalize default values

// 20x Shin Ramen Packets
loadI 1766 => r0

// CanaKit Raspberri Pi 2 Complete Starter Kit
loadI 6999 => r1

// Pentel R.S.V.P Ballpoint Pen, 5 Pack
loadI 449 => r2

// The average price of a college textbook
// Acta Philosophorum
loadI 174000 => r3

// Cheez-its, 36 pack
loadI 1996 => r4

// Xbox One Wireless Controller
loadI 5294 => r5

// Bro Sunglasses
loadI 4990 => r6

// Bro "Come With Me If You Want To Lift" Tank
loadI 1395 => r7

// Calculate cart

// Add 2 Ramen to total
loadI 2 => r8
mult r8, r0 => r9

// Add Raspberri Pi to total
add r1, r9 => r10

// Add 4x pens
loadI 4 => r8
mult r8, r2 => r8
add r8, r10 => r11

// Add soul-destroying textbook
add r3, r11 => r12

// Add 10x Cheez-its
loadI 10 => r8
mult r8, r4 => r8
add r8, r12 => r13

// Add Xbox Controller
add r5, r13 => r14

// Add Broglasses
add r6, r14 => r15

// Add righteous T-shirt
add r7, r15 => r16

// Save in memory and output
loadI 1024 => r17
store r16 => r17

// output
output 1024


// reset sum
loadI 0 => r8
store r8 => r17

// Add 8 Ramen to total
loadI 8 => r8
mult r8, r0 => r9

// Add 2 Raspberri Pi to total
loadI 2 => r8
mult r1, r8 => r8
add r8, r9 => r10

// Add 0x pens
loadI 0 => r8
mult r8, r2 => r8
add r8, r10 => r11

// Add 6 soul-destroying textbooks
loadI 6 => r8
mult r3, r8 => r3
add r3, r11 => r12

// Add 10x Cheez-its
loadI 10 => r8
mult r8, r4 => r8
add r8, r12 => r13

// Add Xbox Controller
add r5, r13 => r14

// Add Broglasses
add r6, r14 => r15

// Add righteous T-shirt
add r7, r15 => r16

// Save in memory and output
store r16 => r17

// output
output 1024