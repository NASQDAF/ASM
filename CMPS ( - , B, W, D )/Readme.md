CoMPare String Byte / Word / Double word operands

Purpose: comparing two sequences (strings) of elements in memory.

Work algorithm:

	1) subtract elements (source - destination), the addresses of the elements must first be loaded:
		1.a) source address - into a pair of registers ds: esi/si;
		1.b) destination address - in a pair of es registers: edi/di;
	2) depending on the state of the df flag, change the value of the esi/si and edi/di registers:
		2.a) if df = 0, then increase the contents of these registers by the length of the sequence element;
		2.b) if df = 1, then decrease the contents of these registers by the length of the sequence element;
	3) set flags depending on the result of subtraction:
		3.a) if the successive elements of the chains are not equal, then cf = 1, zf = 0;
		3.b) if the successive elements of the chains or the chain as a whole are equal, then cf = 0, zf = 1;
	4) if a prefix is present, execute the actions it defines.

State of flags after command execution:

	11	07	06	04	02	00
	OF	SF	ZF	AF	PF	CF
	r	r	r	r	r	r
