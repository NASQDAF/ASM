Check array BOUNDs

Purpose: checking if the index value is within the array.

Work algorithm:

	1) Compare the value in the index register with two values ​​located sequentially in the memory cell addressed by the array boundary operand. The range of index values ​​is determined by the index register used:
		1.a) if it is a 16-bit general register, then the value it contains is checked to see if it falls within the range of values ​​that are in two consecutive words in memory at the address indicated by the second operand. These two values ​​are, respectively, the lower and upper index values ​​of the array boundary;
		1.b) if it is a 32-bit general register, the value it contains is checked to see if it falls within the range of values ​​that are in two consecutive double words in memory at the address indicated by the second operand. These two values ​​are, respectively, the lower and upper index values ​​of the array boundary;
		1.c)If, as a result of the check, the value from the register has gone beyond the specified range of values, then interrupt number 5 is raised, if not, the program continues execution.

State of flags after command execution:

	command execution does not affect flags