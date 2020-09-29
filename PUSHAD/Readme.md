PUSH All general Double word registers onto stack

Purpose: placement of general-purpose registers on the stack in the following sequence: eax, ecx, edx, ebx, esp, ebp, esi, edi.

Work algorithm:

	1) decrease the value of the stack pointer esp by 32;
	2) put the values of the general-purpose registers eax, ecx, edx, ebx, esp, ebp, esi, edi into the stack in sequence. The edi content will be at the top of the stack. The esp content is included as of the moment before this command was executed.

State of flags after command execution:

	command execution does not affect flags