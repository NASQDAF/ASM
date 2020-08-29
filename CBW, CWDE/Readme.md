Convert Byte to Word / Convert Word to Double Word Extended

Purpose: Expansion of a signed operand.

Work algorithm:
	
	a) cbw - when running, the command uses only the al and ax registers:
		parsing the sign bit of the al register:
			a.1) if the sign bit al = 0, then ah = 00h;
			a.2) if the sign bit al = 1, then ah = 0ffh.

	b) cwde - when working, the command uses only the ax and eax registers:
		parsing the sign bit of the ax register:
			b.1) if the sign bit ax = 0, then set the most significant word eax = 0000h;
			b.2) if the sign bit ax = 1, then set the high-order word eax = 0ffffh.

State of flags after command execution:

	command execution does not affect flags
