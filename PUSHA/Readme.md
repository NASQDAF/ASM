PUSH All general registers onto stack

Purpose: placement on the stack of general-purpose registers in the following sequence: ax, cx, dx, bx, sp, bp, si, di.

Work algorithm:

	1) decrease the value of the stack pointer esp/sp by 32/16 (depending on the value of the address size attribute - use16 or use32);
	2) Include on the stack sequentially the values of the general-purpose registers ax, cx, dx, bx, sp, bp, si, di.

The contents of di will then be at the top of the stack. The contents of sp are pushed onto the stack as they were before the command was executed.

State of flags after command execution:

	command execution does not affect flags

