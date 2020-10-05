.386
;extract the upper half of eax in bx without destroying eax
		mov 	cl,16
		shld 	ebx,eax,cl
		push 	bx
		shl 	ebx,cl
		shld 	eax,ebx,cl	;restore eax pop bx