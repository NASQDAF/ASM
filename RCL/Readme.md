Rotate operand through Carry flag Left

Purpose: operation of cyclic shift of the operand to the left through the carry flag cf.

Work algorithm:

	1) shift all bits of the operand to the left by one bit, while the most significant bit of the operand becomes the value of the carry flag cf;
	2) at the same time, the old value of the carry flag cf is inserted into the operand from the right and becomes the value of the least significant bit of the operand;
	3) the above two actions are repeated a number of times equal to the value of the second operand of the rcl command.

State of flags after command execution:

	11 	00
	OF 	CF
	?r 	r
	
Here, the notation ?r means that the analysis of the state of the flag makes sense for a certain combination of operands. In the case of the rcl command, the of flag is of interest if it is shifted one bit.

Application:
The rcl command is used to cyclically shift the bits of the operand to the left. The peculiarity of this shift is that it occurs with some delay, since the next shifted bit is outside the operand for some time. At this time, you can extract and/or replace it. Another important point is that the microprocessor uses only the least significant five bits of the num_bits operand for the shift counter. Thus, a value greater than 31 is not allowed by the microprocessor (in hardware this limitation is implemented by ignoring the values of all counter bits, except for the first five). Notice another interesting effect related to the behavior of the of flag. In shift operations by one bit, by changing this flag, one can judge the fact of changing the signed (most significant) bit of the operand:

	1) of = 1, if the current value of the cf flag and the extended bit of the operand on the left are different;
	2) of = 0 if the current value of the cf flag and the extended bit of the operand on the left are the same.

