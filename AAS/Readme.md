Ascii Adjust after Substraction

Purpose: to correct the result of subtracting two unpacked one-digit BCD numbers.

Work algorithm:

	if (low nibble of register al is less than 9) or (flag af = 1), then do the following:

		1) decrease the value of the low nibble of the al register by 6;
		2) reset the high nibble of the al register;
		3) set the af and cf flags to 1;

	otherwise, set the af and cf flags to 1.

State of flags after command execution:

	11 	07 	06 	04 	02 	00
	OF 	SF 	ZF 	AF 	PF 	CF
	? 	? 	? 	r	?	r
