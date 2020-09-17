Interrupt RETurn

Purpose: used at that point in the interrupt handler from where control must be returned to the interrupted program.

Work algorithm:

	The work of the command depends on the operating mode of the microprocessor:
		1) in real mode, the iret command sequentially pops from the stack and then restores the contents of the following registers in the microprocessor: eip/ip, cs, eflags/flags. Then the interrupted program continues from the point of interruption;
		2) in protected mode, command actions depend on the state of the NT flag (nested task) in the flags register:
			2.a) if NT = 0, then actions are taken to return control to the interrupted program, and the nature of these actions depends on the ratio of the privilege levels of the interrupted program and the interrupt handler;
			2.b) in case NT = 1, tasks are performed.

State of flags after command execution:

	11 	10 	09 	08 	07 	06 	04 	02 	00
	OF	DF 	IF 	TF 	SF 	ZF 	AF 	PF 	CF
	r 	r 	r 	r 	r 	r 	r 	r 	r