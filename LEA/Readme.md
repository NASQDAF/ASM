Load Effective Address

Purpose: getting the effective address (offset) of the source.

Work algorithm:
the command algorithm depends on the current addressing mode (use16 or use32):

    a) if use16, the 16-bit offset value of the source operand is loaded into the receiver register;
    b) if use32, then the 32-bit offset value of the source operand is loaded into the receiver register.

State of flags after command execution:

	command execution does not affect flags

