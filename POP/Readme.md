POP operand from the stack

Purpose: popping a word or double word from the stack.

Work algorithm:

	The algorithm of the command depends on the set attribute of the address size - use16 or use32:
		1) load the contents of the top of the stack into the receiver (addressed by the ss: esp/sp pair);
		2) increase esp/sp content by 4 (2 bytes) for use32 (respectively for use16).

State of flags after command execution:

	command execution does not affect flags
