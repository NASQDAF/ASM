Rotate operand through Carry flag Right

Purpose: the operation of cyclic shift of the operand to the right through the carry flag cf.

Work algorithm:

	1) shift all bits of the operand to the right by one bit; in this case, the least significant bit of the operand becomes the value of the carry flag cf;
	2) at the same time, the old value of the carry flag is transferred to the left operand and becomes the value of the most significant bit of the operand;
	3) the above two actions are repeated a number of times equal to the value of the second operand of the rcr command.

State of flags after command execution:

	11 	00
	OF 	CF
	?r 	r
	
Here, the notation ?r means that the analysis of the state of the flag makes sense for a certain combination of operands. In the case of the rcr command, the of flag is of interest if it is shifted one bit.

Application:
The rcr command is used to cyclically shift the bits of the operand to the right. The peculiarity of this shift is that it occurs with some delay, since the next shifted bit is outside the operand for some time. At this time, you can extract and/or replace it. Another important point is that the microprocessor uses only the least significant five bits of the num_bits operand for the shift counter. Thus, a value greater than 31 is not allowed (in hardware, this restriction is implemented by ignoring the values of the counter bits greater than the fifth). Pay attention to another interesting effect associated with the behavior of the of flag - its meaning is meaningful only in shift operations by one bit and is due to the fact that by changing this flag one can judge the fact that the sign bit of the operand has changed:

	1) of = 1, if the current (that is, before the shift operation) values of the cf flag and the high-order, left-hand bit of the operand are different;
	2) of = 0 if the current (that is, before the shift operation) values of the cf flag and the high-order, left-hand bit of the operand on the left coincide.
	
