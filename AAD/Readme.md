Ascii Adjust before Division

Purpose:
1) preparing two unpacked BCD numbers for division;
2) converting a two-digit unpacked BCD number less than 63h (9910) to a binary representation.

Work algorithm:
1) multiply the value of the ah register by 10 and add the resulting value with the contents of the register al: (ah * 10) + al;
2) set al register to value (ah * 10) + al;
3) clear register ah.

State of flags after command execution:

	11 	07 	06 	04 	02 	00 
	OF 	SF 	ZF 	AF 	PF 	CF 
	? 	r  	r  	r  	r  	? 
