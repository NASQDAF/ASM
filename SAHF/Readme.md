Store AH register into register Flags
 
Purpose: writing the contents of the ah register to the low byte of the eflags/flags register, which contains the five flags cf, pf, af, zf and sf.

Work algorithm:

	The command loads the low byte of the eflags/flags register with the contents of the ah register. Bits 7, 6, 4, 2, and 0 of the ah register must contain the new values of the sf, zf, af, pf, and cf flags, respectively.

State of flags after command execution:

	07 	06 	04 	02 	00
	SF 	ZF 	AF 	PF 	CF
	r 	r 	r 	r 	r

