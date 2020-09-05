Load Interrupt Descriptor Table

Purpose: loading the idtr register with the values ??of the base address and the size of the IDT global descriptor table.

Work algorithm:

	The lidt command is similar to lgdt, but for the IDT interrupt descriptor table.

State of flags after command execution:

	command execution does not affect flags
