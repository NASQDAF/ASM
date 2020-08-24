Addition with Carry

Purpose: addition of two operands, taking into account the carry from the least significant bit.

Work algorithm:

	1) add two operands;
	2) put the result in the first operand: sink = sink + source;
	3) set flags depending on the result.

State of flags after command execution:

	11 	07 	06 	04 	02 	02
	OF 	SF 	ZF 	AF 	PF 	CF
	r 	r 	r 	r 	r 	r