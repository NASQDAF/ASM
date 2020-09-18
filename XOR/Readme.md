Logical exclusive OR

Purpose: logical exclusive OR operation on two byte-sized operands, word or double word.

Work algorithm:

    1) perform a logical exclusive OR operation on the operands: the result bit is 1 if the values of the corresponding bits of the operands are different, in other cases the result bit is 0;
    2) write the result of addition to the receiver;
    3) set flags.

State of flags after command execution:
	
	11 	07 	06 	04 	02 	00
	OF 	SF 	ZF 	AF 	PF 	CF
	0 	r 	r	? 	r 	0