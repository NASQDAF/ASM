SuBtract with Borrow

Purpose: integer subtraction taking into account the result of the previous subtraction by the sbb and sub commands (by the state of the carry flag cf).

Work algorithm:

    1) perform addition operand_2 = operand_2 + (cf);
    2) perform subtraction operand_1 = operand_1-operand_2;

State of flags after command execution:

	11 	07 	06 	04 	02 	00
	OF 	SF 	ZF 	AF 	PF 	CF
	r 	r 	r 	r 	r 	r