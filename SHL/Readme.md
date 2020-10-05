SHift logical Left

Purpose: logical shift of the operand to the left.

Work algorithm:

    1) shift all bits of the operand to the left by one bit, while the bit shifted from the left becomes the value of the carry flag cf;
    2) at the same time the zero bit is inserted into the operand from the left;
    3) the above two actions are repeated a number of times equal to the value of the second operand.

State of flags after command execution:

	11	00
	OF	CF
	?r 	r