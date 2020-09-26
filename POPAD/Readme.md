POP All 32-bit general Double word registers from the stack
 
Purpose: pop the general purpose registers edi, esi, ebp, esp, ebx, edx, ecx, eax from the stack.

Work algorithm:

	1) pop the values ??from the stack sequentially and load them into 32-bit general purpose registers edi, esi, ebp, esp, ebx, edx, ecx, eax. The edi content is restored first. Esp content is retrieved but not restored;
	2) increase the esp stack pointer by 32.

State of flags after command execution:
	
	command execution does not affect flags
	
Application:
Popad is the reverse of pushad and is used to restore all 32-bit general purpose registers. This command can be used in routines and interrupt routines to restore the general registers of an interrupted program.