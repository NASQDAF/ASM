Cyclic shift of the operand to the right

Purpose: operation of cyclic shift of the operand to the right.

Work algorithm:

    1) shift all bits of the operand to the right by one bit, while the least significant bit of the operand is pushed into the operand from the left and becomes the value of the most significant bit of the operand;
    2) at the same time, this least significant bit of the operand becomes the value of the carry flag cf;
    3) the old value of the carry flag cf is inserted into the operand from the left and becomes the value of the most significant bit of the operand;
    4) the above two actions are repeated a number of times equal to the value of the second operand.

State of flags after command execution:

	11 	00
	OF 	CF
	?r 	r
	
Application:
The ror instruction is used to cyclically shift the bits of the operand to the right. The difference between this shift and rcr is that the next shifted bit is simultaneously shifted into the operand from the left and becomes the value of the cf flag. As with other shifts, the value of the second operand (shift counter) is limited to the range 0 ... 31. This is because the microprocessor uses only the least significant five bits of the num_bits operand. Similarly to other shift commands, the effect associated with the behavior of the of flag is preserved, the value of which is meaningful only in operations of shift by one bit:

    if of = 1, then the current value of the cf flag and the bit of the operand to be inserted from the left are different;
    if of = 0, then the current value of the cf flag and the bit of the operand being inserted from the left coincide;

This effect, as you remember, is due to the fact that the of flag is set to one every time the sign bit of the operand changes.
