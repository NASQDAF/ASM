POP All general registers from the stack

Purpose: popping general purpose registers di, si, bp, sp, bx, dx, cx, ax from the stack.

Work algorithm:

	1) pop the values from the stack sequentially and load them with general purpose registers di, si, bp, sp, bx, dx, cx, ax. The content of di is restored first. Sp content is retrieved but not recovered;
	2) increase the esp/sp stack pointer by 16.

State of flags after command execution:

	command execution does not affect flags