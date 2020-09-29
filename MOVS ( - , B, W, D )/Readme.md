MOVe String Byte / Word / Double word

Purpose: transfer of elements of two sequences (chains) in memory.

Work algorithm:

	1) copy a byte, word or double word from the source operand to the destination operand, while the addresses of the elements must first be loaded:
		1.a) source address - into a pair of registers ds: esi/si (ds by default, segment replacement is allowed);
		1.b) receiver address - in the es: edi/di register pair (segment replacement is not allowed);
	2) depending on the state of the df flag, change the value of the esi/si and edi/di registers:
		2.a) if df = 0, then increase the contents of these registers by the length of the structural element of the sequence;
		2.b) if df = 1, then decrease the contents of these registers by the length of the structural element of the sequence;
	3) if there is a repetition prefix, then perform the actions it defines.

State of flags after command execution:

	command execution does not affect flags