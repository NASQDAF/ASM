Input String Byte / Word / Double word operands

Purpose: input from the port into the memory of a sequence of bytes, words, double words.

Work algorithm:

	1) transfer data from the I/O port, the number of which is loaded into the dx register, into memory at the address es: edi/di;
	2) depending on the state of the df flag, change the value of the edi/di registers:
		2.a) if df = 0, then increase the contents of these registers by the length of the structural element of the sequence;
		2.b) if df = 1, then decrease the contents of these registers by the length of the structural element of the sequence;
	3) if a prefix is present, perform the actions it defines.

State of flags after command execution:

	command execution does not affect flags
