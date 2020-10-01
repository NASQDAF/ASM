LOad String Byte / Word / Double word operands

Purpose: loading an element from a sequence (chain) into an accumulator register al/ax/eax.

Work algorithm:

	1) load an item from the memory cell addressed by the ds: esi/si pair into the al/ax/eax register. The size of the item is determined implicitly (for the lods command) or explicitly according to the command used (for the lodsb, lodsw, lodsd commands);
	2) change the value of the si register by an amount equal to the length of the chain element. The sign of this value depends on the state of the flag df:
		2.a) df = 0 - the value is positive, that is, scanning from the beginning of the chain to its end;
		2.b) df = 1 - the value is negative, that is, scanning from the end of the chain to its beginning.

State of flags after command execution:
command execution does not affect flags