JuMP

Purpose: used in the programme to organise an unconditional transition both within and outside the current team segment. Under certain conditions in protected mode, the jmp command can be used to switch tasks.

Work algorithm:

	Depending on the type of its operand, the jmp command changes the content of either only one eip register or both cs and eip registers:
	
		1) if the operand in the command jmp is a label in the current command segment (a8, 16, 32), then the assembler forms a machine command, the operand of which is a value with a sign that is an offset of the transition relative to the command following the jmp. Only the eip/ip register is changed in this type of transition;
		2) if the operand in the jmp command is a symbolic identifier of a memory cell (m16, 32, 48), then the assembler assumes that it contains the address to which the control must be transferred. This address can be of three types:
			2.a) the value of the absolute offset of the transition label relative to the beginning of a code segment. The size of this offset can be 16 or 32 bits depending on the addressing mode;
			2.b) a remote pointer to the transition label in real and secure modes, containing two address components - segment and offset. The size of these components also depends on the set addressing mode (use16 or use32). If the current mode is use16, the segment address and offset occupy 16 bits each, and the offset is located in the lower word of the double word allocated to this full transition label address. If the current mode is use32, then the segment address and offset occupy 16 bits and 32 bits respectively - the junior double word has the offset and the senior double word has the segment address;
			2.c) the address in one of the 16 or 32-bit registers - this address represents the absolute offset of the mark to which the control is to be transferred relative to the start of the command segment.
	
In order to understand the differences between real and secure transition mechanisms, the following must be remembered. In real mode, the microprocessor simply changes cs and eip/ip according to the contents of the pointer in memory. In the protected mode, the microprocessor preliminarily analyses the byte of AR access rights in the descriptor, the number of which is determined by the content of the segmented part of the pointer. Depending on the state of the AR byte, the microprocessor performs either a transition or task switching.

State of flags after command execution (except for switching tasks):
	
	command execution does not affect flags