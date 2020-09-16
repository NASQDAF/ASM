INTerrupt

Purpose: calling the interrupt service routine with the interrupt number specified by the instruction operand.

Work algorithm:

	1) push the eflags/flags register and return address onto the stack. When writing the return address, the contents of the 2) cs segment register are written first, then the contents of the eip/ip command pointer;
    3) reset the if and tf flags to zero;
    4) transfer control to the interrupt handler with the specified number. The transfer of control mechanism depends on the mode of operation of the microprocessor.

State of flags after command execution:

	09 	08
	IF 	TF
	0 	0

