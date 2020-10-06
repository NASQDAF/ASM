RETurn/RETurn Far from procedure

Purpose: return of control from the calling program procedure.

Work algorithm:

The operation of the command depends on the type of procedure:

	1) for procedures of the near type - restore the contents of eip/ip from the stack;
	2) for procedures of the far type - to restore from the stack the content of eip/ip and segment register cs.
	3) If the ret command has an operand, increase the esp/sp content by the value of the operand number; the addressing mode attribute - use16 or use32 - is taken into account:
		3.a) if use16, then sp=(sp+number), that is, the stack pointer is shifted by the number of bytes equal to the value of the number;
		3.b) if use32, then sp=(sp+2*number), that is, the stack pointer is shifted by a number of words equal to the value of the number.
		
State of flags after command execution:

	command execution does not affect flags