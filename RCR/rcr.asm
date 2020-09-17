;counting the number of one bits in the operand
operand dw ...
...
	mov	cx,16	;operand size
	xor	al,al	;single bit counter
cycl: rcr operand,1
	jc 	$+4	 	;branch if next extended bit is 1
	jmp	$+4 	;branch if next extended bit is 0
	inc	al   	;increment single bit counter
	loop cycl