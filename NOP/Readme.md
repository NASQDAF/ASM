No OPeration

Purpose: empty command.

Work algorithm:
	
	does not perform any action.
	
State of flags after command execution:

	command execution does not affect flags
	
Application:
	
	The nop command, occupying one byte, can be used to reserve space in a code segment or to provide software delay. For an illustration, refer to the example given in the description of the hlt command. In this example, the nop command can be used instead of jmp $ + 2. The purpose of jmp $ + 2 in this fragment is a delay for synchronizing the operation of the microprocessor and computer hardware.