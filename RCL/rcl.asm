;shift the operand occupying two double words by four bits to the left
ch_l dd ...     	;least significant part of 64-bit operand
ch-2 dd ...     	;upper part of 64-bit operand
...
	mov	cx,4    	;shift counter in cx
	mov	eax,ch_l
	mov	edx,ch_h
m1: clc         	;clear cf flag
	rcl	eax,1   	;high bit of eax in cf
	rcl	edx,1   	;cf to low-order bit of edx, high-order bit of edx to 

cf
	loop m1