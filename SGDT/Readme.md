Store Global Descriptor Table 

Purpose: retrieves the contents of the system register gdtr, which contains the values of the base address and size of the global GDT descriptor table.

Work algorithm:

	The command reads the contents of the system register gdtr into a 48-bit memory area. Structurally, these 48 bits represent 16 bits of size and 32 bits of the base address of the beginning of the GDT in memory.

State of flags after command execution:

	command execution does not affect flags