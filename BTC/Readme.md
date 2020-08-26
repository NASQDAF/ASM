Bit Test and Complement

Purpose: extracting the value of the specified bit into the cf flag and changing its value in the operand to the opposite.

Work algorithm:

	1) get the value of the bit with the position number index in the source operand;
	2) invert the value of the selected bit in the source operand;
	3) set the cf flag to the original bit value.

State of flags after command execution:

	00
	CF
	r
