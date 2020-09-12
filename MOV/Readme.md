MOVe operand

Purpose: transfer of data between registers or registers and memory.

Work algorithm:

	copying the second operand to the first operand.

State of flags after command execution:
	
	command execution does not affect flags

Application:
The mov command is used for various kinds of data transfers, while, despite the simplicity of this action, you need to remember about some restrictions and peculiarities of this operation:

	-the direction of transfer in the mov instruction is always from right to left, that is, from the second operand to the first;
	-the value of the second operand does not change;
	-both operands cannot be from memory (if necessary, you can use the chained instruction movs);
	-only one of the operands can be a segment register;
	-it is desirable to use the al/ax/eax register as one of the operands, since in this case TASM generates a faster form of the mov instruction.
