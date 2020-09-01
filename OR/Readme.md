Logical OR

Purpose: a logical OR operation on the bits of the destination operand.

Work algorithm:

    1) perform a logical OR operation on the bits of the destination operand, using the second operand, the mask, as a mask. In this case, the result bit is 0 if the corresponding bits of the mask and destination operands are 0, otherwise the bit is 1;
    2) write the result of the operation to the source (the mask operand remains unchanged);
    3) set flags.

State of flags after command execution:
	
	11 	07 	06 	04 	02 	00
	OF 	SF 	ZF 	AF 	PF 	CF
	0 	r 	r	? 	r 	0
