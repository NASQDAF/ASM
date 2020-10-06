byte SET on condition

Purpose: setting of the operand to a logical value depending on the truth of the condition set by the modifier of the cc operation code.

Work algorithm:

	The team verifies that the condition set in the operation code is true, i.e. in fact the state of certain flags.

	Byte installation commands
	
	Command 		Flags to be inspected 		Logical condition
	SETA/SETNBE 	CF 	= 	0 	and	ZF 	=	0  	(above) / (not below or equal)
	SETAE/SETNB 	CF 	= 	0               	(above or equal) / (not below)
	SETB/SETNAE 	CF 	= 	1               	(below) / (not above or equal)
	SETBE/SETNA 	CF 	= 	1 	or 	ZF	=	1  	(below or equal) / (not above)
	SETC        	CF	=	1               	carryover
	SETE/SETZ   	ZF	=	1                	zero
	SETG/SETNLE 	ZF	=	0 	or 	SF	=	OF 	(more) / (not less or equal)
	SETGE/SETNL 	SF	=	OF              	(more or equal) / (not less)
	SETL/SETNGE 	SF 	<> 	OF              	if 	SF 	<> 	OF
	SETLE/SETNG 	ZF	=	1 	or 	SF 	<> 	OF 	(less or equal) / (not more)
	SETNC       	CF	=	0                 	no carryover
	SETNE/SETNZ  	ZF	=	0                 	does not equal zero
	SETNO       	OF	=	0                 	no overflow
	SETNP/SETPO 	PF	=	0                 	(inequality) / (no parity check)
	SETNS       	SF	=	0               	no sign, number positive
	SETO        	OF	=	1                	overflow
	SETP/SETPE  	PF	=	1                	parity / equity check
	SETS        	SF	=	1               	if minus sign, number negative
	
	If the condition being checked (or the content of the corresponding flags at the time of issuing the setcc command) is true, then set the value of the operand to 01h, if the condition is false - to 00h.

State of flags after command execution:

	command execution does not affect flags
