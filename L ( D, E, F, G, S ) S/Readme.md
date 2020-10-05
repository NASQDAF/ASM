Load pointer into ds/es/fs/gs/ss segment register

Purpose: obtaining a complete pointer as a segment component and offset.

Work algorithm:

	The working algorithm of the command depends on the current addressing mode (use16 or use32):

		1)if use16, then load the first two bytes from the source memory cell into the 16-bit register specified by the operand receiver. The next two bytes in the source area must contain a segment component of some address; they are loaded into the ds/es/fs/gs/ss register;
		2) if use32, then load the first four bytes from the memory cell source in the 32-bit register specified by the operand receiver. The next two bytes in the area of the source must contain a segment component, or selector, of some address; they are loaded in the register ds/es/fs/gs/ss.
		
State of flags after command execution:

	command execution does not affect flags

Application:

	Thus, using these commands in a register pair ds/es/fs/gs/ss and the receiver is the full address of some memory cell. This fact can be used, for example, when working with chain commands, where there are strict agreements to place the addresses of the strings being processed.