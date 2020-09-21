Integer MULtiply

Purpose: the operation of multiplying two signed integer binary values.

Work algorithm:

	1) The command algorithm depends on the command form used. The single-operand instruction form requires the explicit location of only one factor, which can be located in a memory location or register. The location of the second factor is fixed and depends on the size of the first factor:

		if the operand specified in the command is a word, then the second factor is located in ax;
		if the operand specified in the command is a byte, then the second factor is located in al;
		if the operand specified in the command is a double word, then the second factor is located in eax.

	2) The result of multiplication for an instruction with one operand is also placed in a strictly defined place, determined by the size of the factors:
	
		when multiplying bytes, the result is placed in ax;
		when multiplying words, the result is placed in a pair dx: ax;
		when multiplying double words, the result is placed in the pair edx: eax.
	
	3) Commands with two and three operands uniquely determine the location of the result and factors as follows:
	
		in a two-operand instruction, the first operand locates the first factor. The result will subsequently be written in its place. The second operand locates the second factor;
		in a three-operand instruction, the first operand specifies the location of the result, the second operand the location of the first factor, and the third operand can be a directly specified byte, word, or double word value.
	
State of flags after command execution:

	11 	07 	06 	04 	02 	00
	OF 	SF 	ZF 	AF 	PF 	CF
	r	? 	? 	? 	? 	r

The imul command sets the of and cf flags to zero if the size of the result matches the destination register. If these flags are nonzero, then this means that the result is too large for the frame assigned to it by the destination register and it is necessary to specify a larger register for the successful completion of this multiplication operation. The specific conditions for resetting the flags of and cf to zero are the following conditions:

	for the single-operand form of the imul instruction, the ax/dx/edx registers are signed extensions of the al/ax/eax registers;
	for the two-operand form of the imul instruction, the dimension of the specified destination registers r16/r32 is sufficient to accommodate the result of multiplication;
	the same for the three-operand multiply instruction.

