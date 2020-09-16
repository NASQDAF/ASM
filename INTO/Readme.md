INTerrupt if Overflow

Purpose: Initiate interrupt number 4 if the of flag is set.

Work algorithm:

	Analyze the state of the flag of:
		
		1)if of = 0, then no action is required - transfer control to the next command;
		2)if of = 1, then further actions, as with the int command, that is:
			2.a) push the eflags/flags register and return address onto the stack. When writing the return address, the contents of the cs segment register are written first, then the contents of the eip/ip command pointer;
			2.b) reset the if and tf flags to zero;
			2.c) transfer control to the interrupt handler with the given number. The transmission mechanism depends on the mode of operation of the microprocessor.

State of flags after command execution:

	09 	08
	IF 	TF
	r 	r

