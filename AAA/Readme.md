1) analyze the value of the low nibble of the al register and the value of the af flag;
2) if (value of the lower nibble of the register al > 9) or (AF = 1), then perform the following actions:
	2.a)increase the al value by 6;
	2.b)clear the high nibble of the al register;
	2.c)increase the value of ah by 1;
	2.d)set flags: af = 1, cf = 1,
  otherwise, reset flags af = 0 and cf = 0.
  
State of flags after command execution: 
	
	11 	07 	06 	04 	02 	00 
	OF 	SF 	ZF 	AF 	PF 	CF 
	? 	?  	?  	r 	? 	r 
