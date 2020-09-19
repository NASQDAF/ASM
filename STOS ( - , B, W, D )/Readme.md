Store String Byte / Word / Double word operands

Purpose: storing an element from the al/ax/eax accumulator register in a sequence (chain).

Work algorithm:

	1) write an element from the al/ax/eax register to the memory location addressed by the es: di/edi pair. The element size is determined implicitly (for the stos command) or by the specific command used (for the stosb, stosw, stosd commands);
	2) change the value of the di register by an amount equal to the length of the chain element. The sign of this change depends on the state of the df flag:
		2.a) df = 0 - increase, which means viewing from the beginning of the chain to its end;
		2.b) df = 1 - decrease, which means looking from the end of the chain to its beginning.

State of flags after command execution:

	command execution does not affect flags