.386
;divide 64 bit operand by power of 2
op_l 	dd 	...	;least significant part of the operand
op_h 	dd 	...	;upper part of the operand
...
		mov 	eax,op_h
		shrd 	op_l,eax,4	;divide operand by 4
;since the leading part of the operand has not really 
;shifted yet, you need to bring it in line with the result
        shr 	op_h,4