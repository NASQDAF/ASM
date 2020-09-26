eXchange and ADD

Purpose: summation and exchange of two values.

Work algorithm:

    1) copy the contents of the receiver operand to the source operand;
    2) perform addition (sink + source);
    3) put the sum into the receiver operand.

State of flags after command execution:
	
	11	07	06	04	02	00
	OF	SF	ZF	AF	PF	CF
	r	r	r	r	r 	r