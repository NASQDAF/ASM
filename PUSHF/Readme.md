PUSH Flags register onto stack

Purpose: placing at the top of the stack (ss:sp) the contents of the flags register.

Work algorithm:

    1) decrease the value of the stack pointer sp by 2;
    2) push the contents of the flags register to the top of the stack.

State of flags after command execution:

	command execution does not affect flags