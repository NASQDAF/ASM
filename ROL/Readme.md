Rotate operand Left

Purpose: operation of cyclic shift of the operand to the left.

Work algorithm:

    shift of all bits of the operand to the left by one bit, while the most significant bit of the operand is pushed into the operand from the right and becomes the value of the least significant bit of the operand;
    at the same time the bit to be pushed out becomes the value of the carry flag cf;
    the above two actions are repeated a number of times equal to the value of the second operand.

State of flags after command execution:

	11	00
	OF	CF
	?r	r
	
Application:
The rol command is used to cyclically shift the bits of the operand to the left. The difference between this shift and rcl is that the next shifted bit is simultaneously shifted into the operand from the right and becomes the value of the cf flag. As with other shifts, the value of the second operand (shift counter) is limited to the range 0 ... 31. This is because the microprocessor uses only the least significant five bits of the num_bits operand. Similarly to other shift commands, the effect associated with the behavior of the of flag is preserved, the value of which is meaningful only in operations of shift by one bit:

   1) if of = 1, then the current value of the cf flag and the bit of the operand being pulled out from the left are different;
   2) if of = 0, then the current value of the cf flag and the left-shifted bit of the operand coincide.

This effect, as you remember, is due to the fact that the of flag is set to one every time the sign bit of the operand changes.

