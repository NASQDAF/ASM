SHift Left Double word

Purpose: logical shift of a double word to the left.

Work algorithm:

    1) shift the receiver operand to the left by the number of bits determined by the shift_num operand;
    2) simultaneously shift the source operand to the left by the number of bits specified by the shift_num operand. It is important to note that the source operand only provides the bits to be inserted into the sink operand, it does not change itself;
    3) bits shifted out during left shift from the source operand are shifted into the destination operand from its right edge.

State of flags after command execution:

	11	07	06	04	02	00
	OF	SF	ZF	AF	PF	CF
	?	r 	r	?	r 	r