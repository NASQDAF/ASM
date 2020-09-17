PUSH operand onto stack

Purpose: placing the contents of the source operand on the stack.

Work algorithm:

    1) decrease the value of the stack pointer esp/sp by 4/2 (depending on the value of the address size attribute - use16 or use32);
    2) write the source to the top of the stack (addressed by the ss:esp/sp pair).

State of flags after command execution:

	command execution does not affect flags

