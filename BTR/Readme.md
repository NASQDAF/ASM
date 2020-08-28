Bit Test and Reset

Purpose: extract the value of the specified bit into the cf flag and change its value to zero.

Work algorithm:

	1) get the value of the bit with the specified position number in the source operand;
	2) set the cf flag to the value of the selected bit;
	3) set the value of the original bit in the operand to 0.

State of flags after command execution:

	00 
	CF 
	r 
