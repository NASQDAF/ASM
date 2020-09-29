MOVe and Zero eXtension

Purpose: converting unsigned elements of a lower dimension into their equivalent unsigned elements of a higher dimension.

Work algorithm:

	1) read the content of the source;
	2) write the contents of the source operand to the sink operand, starting from its least significant bits;
	3) propagate binary zero to free high-order bits of the destination operand.

State of flags after command execution:
	
	command execution does not affect flags