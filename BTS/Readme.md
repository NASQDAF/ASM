Bit Test and Set

Purpose: extracting the value of the specified bit of the operand into the cf flag and setting this bit to one.

Work algorithm:

	1) get the value of the bit with the specified position number in the source operand;
	2) set the cf flag to the value of the selected bit;
	3) set the value of the original bit in the source operand to 1.

State of flags after command execution:

	00
	CF
	r