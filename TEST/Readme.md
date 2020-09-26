TEST operand

Purpose: the operation of logical comparison of the receiver and source operands in bytes, word or double word.

Work algorithm:

    1) perform a logical multiplication operation on the receiver and source operands: the result bit is 1, if the corresponding bits of the operands are 1, in other cases the result bit is 0;
    2) set flags.

State of flags after command execution:
	
	11	07	06	02	00
	OF	SF	ZF	PF	CF
	0	r	r	r 	0