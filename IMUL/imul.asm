.486
...
	mov 	bx,186
	imul 	eax,bx,8
;if the result did not have enough operand dimension1, 
;then go to m1, where we correct the situation:
	jc   	m1
