MOVe operand to / from system registers

Purpose: transfer of data between registers or registers and memory.

Work algorithm:

	copying the second operand to the first.

State of flags after command execution:

	11 	07 	06 	04 	02 	00
	OF 	SF 	ZF 	AF 	PF 	CF
	r 	r 	r 	r 	r 	r

Application:
The mov command is used to exchange data between system registers. This is one of the few possibilities for accessing the contents of these registers. This command can be used only at the zero privilege level or in the real mode of the microprocessor operation.

