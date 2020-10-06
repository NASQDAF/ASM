;calculate the number of single bits in the register ax
    	mov 	cx,16
m1: 	rol 	ax,1
    	setc 	bl
    	add 	bh,bl
    	clc
    	loop 	m1