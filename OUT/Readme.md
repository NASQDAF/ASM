OUT operand to port

Purpose: output value to the I/O port.

Work algorithm:

	Send byte, word, double word from the al/ax/eax register to the port, the number of which is determined by the first operand.

State of flags after command execution:
	
	command execution does not affect flags
