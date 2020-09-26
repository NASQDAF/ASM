NEGate operand

Purpose: change the sign (get the binary's complement) of the source.

Work algorithm:

	1) subtract (0 - source) and place the result in the place of the source;
	2) if source = 0, then its value does not change.

State of flags after command execution (if the result is zero):

	11	07	06	04	02	00
	OF	SF	ZF	AF	PF	CF
	r	r	r	r	r	0

State of flags after command execution (if the result is nonzero):
	
	11	07	06	04	02	00
	OF	SF	ZF	AF	PF	CF
	r	r	r	r	r	1

