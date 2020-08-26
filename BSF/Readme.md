Bit scan forward
Purpose: to check for one bits in the source operand.

Work algorithm:

	1) scanning the bits of the source operand, starting from bit 0 and ending with bit 15/31, until a one bit is encountered;
		2,a) if a one bit is encountered, then the zf flag is set to 0 and the position number where the one bit was encountered is written into the register of the first operand. The range of values ​​depends on the bit width of the second operand: for a 16-bit operand, it is 0 ... 15; for 32-bit it is 0 ... 31;
		2.b) if there are no one bits, then the zf flag is set to 1.

State of flags after command execution:

	06 
	ZF 
	r 
