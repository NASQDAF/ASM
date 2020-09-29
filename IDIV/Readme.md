Integer DIVide

Purpose: Operation of division of two signed binary values.

Work algorithm:

The command requires two operands to be specified - the dividend and the divisor. The dividend is set implicitly, and its size depends on the size of the divisor, the location of which is indicated in the command:

	1) if the divisor is byte size, then the dividend must be located in the ax register. After the operation, the quotient is placed in al, and the remainder in ah;
	2) if the divisor is a word, then the dividend must be located in a pair of registers dx: ax, with the least significant part of the dividend in ax. After the operation, the quotient is placed in ax, and the remainder is in dx;
	3) if the divisor is a double word, then the dividend must be located in the edx: eax register pair, with the least significant part of the dividend in eax. After the operation, the quotient is put into eax, and the remainder is put into edx;

The remainder always has the sign of the dividend. The sign of the quotient depends on the state of the sign bits (most significant bits) of the dividend and divisor.

State of flags after command execution:

	11	07	06	04	02	00
	OF	SF	ZF	AF	PF 	CF
	? 	? 	? 	? 	? 	?