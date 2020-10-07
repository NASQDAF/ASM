setup parameter block for ENTERing procedure

Purpose: setting the boundary on the stack for local procedure variables.

Work algorithm:

	push the current value of the ebp/bp register onto the stack;
	save the current value of esp/sp in the intermediate variable fp (the variable name was chosen at random);
	if the lexical nesting level (lex_lev operand) is not equal to zero, then (lex_lev – 1) do the following:
		depending on the set addressing mode use16 or use32, perform subtraction (bp – 2) or (ebp – 4) and write the result back to ebp/bp;
		store the ebp/bp value on the stack;
		store the value of the intermediate variable fp on the stack;
	write the value of the intermediate variable fp to the ebp/bp register;
	decrease the value of the esp/sp register by the value specified by the first operand, minus the size of the area of local variables loc_size: esp/sp = (esp/sp) –loc_size.

State of flags after command execution:

	command execution does not affect flags