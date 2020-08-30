Jump if condition
Jump if CX = Zero / Jump if ECX = Zero

Jump if the condition is met
Jump if CX / ECX is zero

Purpose: transition within the current segment of commands, depending on a certain condition.

Algorithm of commands (except for jcxz / jecxz):

	1) Checking the status of flags depending on the operation code (it reflects the checked condition):
		1.a) if the checked condition is true, then go to the cell indicated by the operand;
		1.b) if the checked condition is false, then transfer control to the next command.

Algorithm of the jcxz / jecxz command:
	
	2) Checking the condition of equality to zero of the contents of the register ecx / cx:

		2.a) if the checked condition is true, that is, the contents of ecx / cx is equal to 0, then go to the cell indicated by the operand label;
		2.b) if the checked condition is false, that is, the contents of ecx / cx is not equal to 0, then transfer control to the program command following jcxz / jecxz.

State of flags after command execution:

	11 	07 	06 	05 	04 	03 	02 	01 	00
	OF 	SF 	ZF 	0 	AF 	0 	PF 	1 	CF
	?	? 	? 		r		? 		r

Application (except jcxz / jecxz):

	Command 	State of 	Jump condition
				chkd flags	
	
	JA 	 		CF 	= 	0 	
			and ZF 	= 	0 	if 	higher
	JAE  		CF 	= 	0 	if 	higher or equal
	JB 	 		CF 	= 	1 	if 	lower
	JBE  		CF 	= 	1 	
			 or ZF 	= 	1	if 	lower or equal
	JC 	 		CF 	= 	1 	if 	carry
	JE 	 		ZF 	= 	1 	if 	equal
	JZ 	 		ZF 	= 	1 	if 	0
	JG 	 		ZF 	= 	0 	
			and SF 	= 	OF 	if 	greater
	JGE  		SF 	= 	OF 	if 	greater or equal
	JL 	 		SF 	<> 	OF 	if 	less
	JLE  		ZF 	= 	1 	
			or	SF 	<> 	OF 	if 	less or equal
	JNA  		CF 	= 	1 	
			and ZF		= 	1 	if 	not higher
	JNAE 		CF 	= 	1 	if not higher or equal
	JNB  		CF 	= 	0 	if not lower
	JNBE 		CF 	= 	0 	
			and ZF 	= 	0 	if not lower or equal
	JNC  		CF 	= 	0 	if no carry
	JNE  		ZF 	= 	0 	if not equal
	JNG  		ZF 	= 	1 	
			or  SF 	<> 	OF 	if not more
	JNGE 		SF 	<> 	OF 	if not greater than or equal
	JNL  		SF 	= 	OF 	if not less
	JNLE 		ZF 	= 	0 	
			and SF 	= 	OF 	if not less than or equal
	JNO  		OF 	= 	0 	if no overflow
	JNP  		PF 	= 	0 	if the number of single bits of the result is odd (odd parity)
	JNS  		SF 	= 	0 	if plus sign (sign (high) bit of result is 0)
	JNZ  		ZF 	= 	0 	if there is no zero
	JO 	 		OF 	= 	1 	if overflow
	JP 	 		PF 	= 	1 	if the number of single bits of the result is even (even parity)
	JPE  		PF 	= 	1 	is the same as JP, i.e. even parity
	JPO  		PF 	= 	0 	same as JNP
	JS 	 		SF	= 	1 	if 	minus sign (sign (most significant) bit of result is 1)
	JZ 	 		ZF 	= 	1 	if 	zero

Jcxz / jecxz application:

	Command 	Status of flags 	Jump condition
				in eflags / flags
				
	JCXZ 		has no effect 		if register CX = 0
	JECXZ 		has no effect 		if ECX register = 0
