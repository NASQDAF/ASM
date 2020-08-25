ADDition

Purpose: addition of two source and destination operands in bytes, word or double word.

Work algorithm:

    1) add the source and destination operands;
    2) write the result of addition to the receiver;
    3) set flags.

State of flags after command execution:

	11 	07 	06 	04 	02 	00
	OF 	SF 	ZF 	AF 	PF 	CF
	r 	r 	r 	r 	r  	r
