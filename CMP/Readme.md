CoMPare operands

Purpose: comparison of two operands.

Work algorithm:

    perform subtraction (operand1-operand2);
    set the flags depending on the result, do not change operand1 and operand2 (that is, do not store the result).

State of flags after command execution:

	11	07	06	04	02	00
	OF	SF	ZF	AF	PF	CF
	r 	r 	r 	r 	r	r