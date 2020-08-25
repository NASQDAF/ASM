Logical AND

Purpose: a logical multiplication operation for the source and destination operands in bytes, words, or double words.

Work algorithm:

	1) perform a logical multiplication operation on the source and destination operands: each bit of the result is 1, if the corresponding bits of the operands are 1, in other cases, the result bit is 0;
	2) write the result of the operation to the receiver;
	3) set flags.


State of flags after command execution:

	11 	07 	06 	02 	00 
	OF 	SF 	ZF 	PF 	CF 
	0 	r 	r 	r	0 
