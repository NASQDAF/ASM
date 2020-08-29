Load Global Descriptor Table

Purpose: loading the gdtr register with the values ​​of the base address and the size of the GDT global descriptor table.

Work algorithm:
	
	The command loads the 16-bit size and 32-bit value of the base address of 
	the beginning of the GDT table in memory into the system register gdtr. 
	This loading is performed in accordance with the format of this register 

State of flags after command execution:
	
	command execution does not affect flags
