POP eFlags Double word register from the stack

Purpose: popping a double word from the stack and restoring it to the eflags register.

Work algorithm:

	1) pop the double word off the top of the stack and put it in the eflags register;
	2) increase the esp stack pointer by 4.

State of flags after command execution:
	
	17	16	14	1312	11	10	09	08	07	06	04	02	00
	VM	RF	NT	IOPL	OF	DF	IF	TF	SF	ZF	AF	PF	CF
	0	r	r	r   	r	r	r	r	r	r	r	r 	r