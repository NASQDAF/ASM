PUSH eFlags Double word register onto stack
 
Purpose: placing on the stack the contents of the eflags register.

Work algorithm:

    decrease the value of the stack pointer esp by 4;
    write to the top of the stack a double word representing the contents of the eflags register.

State of flags after command execution:
	
	command execution does not affect flags
