.data
sl  	db  	?
.code
...
    	mov 	al,0ffh
    	movzx 	bx,al	;bx = 00ffh
...
;or from memory:
		movzx 	eax,byte ptr sl