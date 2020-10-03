SeT Direction Flag

Purpose: setting the direction flag df to 1.

Work algorithm:

	set the df flag to one.

State of flags after command execution:

	10
	DF
	1

Application:
	
	This command is used to set the df flag to one. Such a necessity may arise when working with chain commands. The single state of the df flag forces the microprocessor to decrement the si and di registers when performing chain operations.