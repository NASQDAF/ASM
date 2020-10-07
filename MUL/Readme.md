MULtiply

Purpose: Multiplication operation of two integers without a sign.

Work algorithm:

	a) The command multiplies two operands without considering the characters. The algorithm depends on the operand format of the command and requires the explicit location of only one doubter, which can be located in memory or in case. The location of the second doubter is fixed and depends on the size of the first doubter:
		a.1) If the operand specified in the command is a byte, the second one shall be located in al;
		a.2) if the operand specified in the command is a word, the second doubter should be located in ax;
		a.3) if the operand specified in the command is a double word, the second doubter should be located in eax.
	
	b) The result of multiplication is also placed in a fixed place determined by the size of the doubters:
		b.1) when multiplying bytes, the result is placed in ax;
		b.2) when multiplying words, the result is placed in the dx:ax pair;
		b.3) when double words are multiplied, the result is placed in the edx:eax pair.


State of flags after command execution (if the most significant half of the result is zero):
11	07	06	04	02	00
OF	SF	ZF	AF	PF	CF
0	? 	? 	? 	? 	0

State of flags after command execution (if the most significant half of the result is nonzero):
11	07	06	04	02	00
OF	SF	ZF	AF	PF	CF
1 	? 	? 	? 	? 	1

Application:

	The mul command performs integer multiplication of operands without considering their sign bits. For this operation, there should be two multiplier operands, one of which is fixed and the other is defined by the operand in the command. It is convenient to control the result size using cf and of flags.
