LOOP control by register cx

Purpose: organizing a loop with a counter in the cx register.

Work algorithm:

	1) decrement register contents ecx/cx;
	2) parsing ecx/cx register:
		2.a) if ecx/cx = 0, transfer control to the command following the loop;
		2.b) if ecx/cx = 1, transfer control to the command whose label is specified as the loop operand.

State of flags after command execution:

	command execution does not affect flags

Two important points:

	a) using the jecxz/jcxz command to prevent the loop from running on zero ecx/cx. If this is not done, then with the initially zero ecx/cx the cycle will repeat 4294967295/65536 times;
	b) the offset of the label, which is the loop operand, must not exceed the range -128...+127 bytes. This offset, as in the conditional branch instructions, is relative to the value of the address counter of the command following the loop.

 

