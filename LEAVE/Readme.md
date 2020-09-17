LEAVE from procedure

Purpose: removing from the stack the area of local (dynamic) variables allocated by the enter command.

Work algorithm:

	The command performs the opposite of the enter command:
		1) the contents of ebp/bp are copied to esp/sp, thereby restoring the value of esp/sp, which was before this procedure was called. On the other hand, restoring the old esp/sp means freeing up the stack space allocated for the terminating procedure (the procedure's local variables are destroyed);
		2) the contents of ebp/bp are restored from the stack, which were before the entry into the procedure. After this action, the esp/sp value also becomes what it was before entering the procedure. As a result of these two actions, the stack frame, if any, of the calling program is also restored.

State of flags after command execution:

	command execution does not affect flags