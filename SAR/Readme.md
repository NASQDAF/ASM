Shift Arithmetic operand Right

Instruction scheme: sar operand, number_shifts

Purpose: arithmetic shift of the operand to the right.

Work algorithm:

	1) shift all bits of the operand to the right by one bit, while the bit shifted from the right becomes the value of the carry flag cf;
	2) pay attention: at the same time, not the zero bit is inserted into the operand from the left, but the value of the most significant bit of the operand, that is, as the shift to the right, the vacant places are filled with the value of the sign bit. For this reason, this type of shift is called arithmetic;
	3) the above two actions are repeated a number of times equal to the value of the second operand.

State of flags after command execution:
	
	11	00
	OF	CF
	?r 	r
