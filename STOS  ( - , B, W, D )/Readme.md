Store String Byte/Word/Double word operands

Purpose: saving an element from the register-accumulator al/ax/eax in a sequence (chain).

Work algorithm:

	1) write an element from the register al/ax/eax to a memory cell addressed by the pair es:di/edi. The size of the element is determined implicitly (for the stos command) or by the specific command applied (for stosb, stosw, stosd commands);
	2) change the value of register di to the value equal to the length of the chain element. The sign of this change depends on the flag state df:
		2.a) df=0 - zoom in, which means viewing from the beginning of a chain to its end;
		2.b) df=1 - reduce, which means viewing from the end to the beginning of a chain.

State of flags after command execution:

	command execution does not affect flags
	
Application:
Commands save an element from al/ax/eax registers to a memory cell. Before the command stos it is possible to specify the repetition prefix rep, in this case it is possible to work with memory blocks, filling them with values according to the contents of the register ecx/cx.