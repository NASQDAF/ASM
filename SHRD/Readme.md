SHift Right Double word

Purpose: logical shift of a double word to the right.

Work algorithm:

	shift the receiver operand to the right by the number of bits determined by the shift_num operand;
	simultaneously shift the source operand to the right by the number of bits determined by the shift_num operand. It is important to note that the source operand only provides the bits to be inserted into the sink operand, it does not change itself;
	bits shifted to the right during a shift from the source operand are shifted into the destination operand from its left end.

State of flags after command execution:

	11	07	06	04	02	00
	OF	SF	ZF	AF	PF	CF
	?	r 	r	?	r 	r