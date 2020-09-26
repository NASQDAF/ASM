SHift Right

Purpose: logical shift of the operand to the right.

Work algorithm:

    1) shift all bits of the operand to the right by one bit; in this case, the bit shifted from the right becomes the value of the carry flag cf;
    2) at the same time the zero bit is inserted into the operand from the left;
    3) the above two actions are repeated a number of times equal to the value of the second operand.

State of flags after command execution:

	11	07	06	04	02	00
	OF	SF	ZF	AF	PF	CF
	?r	r 	r	?	r 	r

