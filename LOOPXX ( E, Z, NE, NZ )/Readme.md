LOOP control by register cx not equal 0 and ZF = 1
LOOP control by register cx not equal 0 and ZF = 0

Purpose: organizing a loop with a counter in the cx register, taking into account the zf flag.

Work algorithm:

	1) decrement register contents ecx/cx;
	2) parse register ecx/cx:
		2.a) if ecx/cx = 0, transfer control to the command following loopxx;
		2.b) if ecx/cx = 1, transfer control to the command, the label of which is specified as the loopxx operand;
	3) parsing the zf flag:
		3.a) if zf = 0, for loope/loopz commands it means to exit the loop, for loopne/loopnz commands - go to the beginning of the loop;
		3.b) if zf = 1, for loope/loopz commands it means jump to the beginning of the loop, for loopne/loopnz commands it means exiting the loop.

State of flags after command execution:
	
	command execution does not affect flags

