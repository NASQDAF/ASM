CALL
 
Purpose:

	1) transfer of control to a close or distant procedure with storing the return point address in the stack;
	2) switching tasks.

Work algorithm:

	determined by the type of the operand:

	1) near label - the contents of the eip/ip command pointer are pushed onto the stack and the new address value corresponding to the label is loaded into the same register;
	2) far label - the contents of the eip/ip and cs command pointers are pushed onto the stack. Then new address values ??corresponding to the far label are loaded into the same registers;
	3) r16, 32 or m16, 32 - define a register or memory location containing offsets in the current instruction segment to which control is transferred. When control is transferred, the contents of the eip/ip command pointer are pushed onto the stack;
	4) memory pointer - defines a memory location containing a 4 or 6 byte pointer to the called procedure. The structure of such a pointer is 2 + 2 or 2 + 4 bytes. The interpretation of such a pointer depends on the operating mode of the microprocessor:
		4.a) in real mode - depending on the size of the address (use16 or use32), the first two bytes are treated as a segment address, the second two/four bytes as an offset of the control transfer target label. The stack stores the contents of the cs and eip/ip registers;
		4.b)in protected mode - the interpretation of the transfer target depends on the value of the AR descriptor byte, which is determined by the selector part of the pointer. The targets here are a far procedure call without a privilege level change, a far procedure call with a privilege level change, or a task switch.

State of flags after command execution (except for task switching):

	command execution does not affect flags

When a task is switched, the values of the flags change according to the eflags register information in the TSS status segment of the task to switch to.