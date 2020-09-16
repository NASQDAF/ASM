.486
...
		mov bx, 186
		imul eax, bx, 8
;if the result did not have enough operand dimension 1,
;then of is set to 1, we correct the situation in the interrupt handler 3
		into