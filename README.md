# 8085-cpu-delay
Delay the Intel 8085 with precision based on the clock and the instruction cycles

The code consists of the subroutine delay and is called when the interrupt 7.5 happens.
The address that is run when 7.5 happens is 003CH but the ROM of the board used
has code there that uses the address on FFE9H for it hence the lines 3 and 4.

Changing the A, B and C before calling DELAY will result in different delays.
Based on calculations, delays on a 3.072MHz 8085 can go from 18.555us to 82.48s with a 0.326us step.
These numbers are for the triple loop used. The min and max delays are different for single and double loops.