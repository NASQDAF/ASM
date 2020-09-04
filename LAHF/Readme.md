Load AH register from register Flags

Purpose: Retrieve the contents of the low byte of the eflags/flags register, which contains five flags: cf, pf, af, zf, sf.

Work algorithm:

	The command loads the ah register with the contents of the low byte of the eflags/flags register. 
	
State of flags after command execution:

	command execution does not affect flags
