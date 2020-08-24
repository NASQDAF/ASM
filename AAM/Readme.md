Ascii Adjust after Multiply

Purpose:

	1) correcting the result of multiplying two unpacked BCD numbers;
	2) converting a binary number less than 63h (9910) into its unpacked BCD equivalent.
  
Work algorithm:
    
	divide the value of the al register by 10;
    write the quotient to the ah register, the remainder to the al register.
	
	
State of flags after command execution:

	11	07 	06 	04 	02 	00
	OF 	SF 	ZF 	AF 	PF 	CF
	? 	r  	r  	r  	r  	?
