Store Interrupt Descriptor Table

Purpose: retrieving the contents of the system register idtr, which contains the values ​​of the base address and the size of the IDT interrupt descriptor table.

Work algorithm:

	the sidt command reads the contents of the idtr system register into a 48-bit memory area. Structurally, these 48 bits represent 16 bits of size and 32 bits of the base address value of the start of the IDT in memory.

State of flags after command execution:

	command execution does not affect flags