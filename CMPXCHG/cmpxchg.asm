.486
	mov 	ax,114eh
	mov 	bx,8e70h
	cmpxchg	bx,ax
	jz m1	;branch if zf = 1, that is, the operands are equal
			;and ax is unchanged action 
... 		;if the operands are not equal
m1: