POP Flags register from the stack

Purpose: popping a word from the stack and restoring it to the flags register.

Work algorithm:

	1) pop a word from the top of the stack and put it in the flags register;
	2) increase the esp stack pointer by 2.

State of flags after command execution:
	14	1312	11	10	09	08	07	06	04	02	00
	NT	IOPL	OF	DF	IF	TF	SF	ZF	AF	PF	CF
	r	r   	r	r	r	r	r	r	r	r 	r
