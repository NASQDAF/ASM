# ASM
 ASM Algorithms
 
A selection for describing the state of flags after executing some command from the table reflecting the structure of the eflags register:

	31  18  17  16  15  14  1312  11  10  09  08  07  06  05  04  03  02  01  00	
	0   0   VM  RF  0   NT  IOPL  OF  DF  IF  TF  SF  ZF  0   AF  0   PF  1   CF
	
The bottom line of this table lists the flag values after the command is executed. In this case, the following designations are used:

	1 — after the command is executed, the flag is set (equal to 1);
	0 — after executing the command, the flag is cleared (equal to 0);
	r — the value of the flag depends on the result of the command;
	? — after executing the command, the flag is not defined;
    space — after executing the command, the flag does not change;

The following conventions are used to represent operands in syntax diagrams:

	r8, r16, r32 		—	byte, word or double word operand in one of the registers;
	m8, m16, m32, m48 	— 	byte, word, double word or 48 bit memory operand;
	i8, i16, i32 		— 	byte, word or double word immediate operand;
	a8, a16, a32 		— 	relative address (offset) in the code segment.
