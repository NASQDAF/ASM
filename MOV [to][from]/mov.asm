.286
;switching the microprocessor to a protected
mode36:
		mov	eax,cr0
		bts	eax,0
		mov	cr0,eax
