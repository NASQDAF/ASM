.386
;set eflags register to 03h
	mov 	eax,3h
	push 	eax
	popfd 	eax		;set new value for eflags