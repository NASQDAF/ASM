MOVe and Sign eXtension

Purpose: converting the signed elements of the lower dimension into their equivalent signed elements of the higher dimension.

Work algorithm:

	1) read the content of the source;
	2) write the contents of the source operand to the sink operand, starting with the least significant bits of the source;
	3) spread the value of the signed bit of the source to the free high-order bits of the destination operand.

State of flags after command execution:

	command execution does not affect flags