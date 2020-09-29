;word division
	mov 	ax,1045	;dividend
	mov 	bx,587 	;divisor
	cwd           	;extension of the dividend dx: ax
	idiv 	bx     	;quotient in ax, remainder in dx