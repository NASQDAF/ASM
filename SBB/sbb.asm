;subtract 64-bit values: vich_1-vich_2
vich_1 	dd 	2 	dup (0)
vich_2 	dd 	2 	dup (0)
rez   	dd 	2 	dup (0)
...
;enter values in the vich_1 and vich_2 fields:
;least significant byte at least significant address
...
        mov eax, vich_1
        sub eax, vich_2    	;subtract lower halves of numbers
        mov rez, eax       	;least significant part of result
        mov eax, vich_1 + 4
        sbb eax, vich_2 + 4	;subtract the most significant halves of 

numbers
        mov rez + 4, eax 	;major part of result
        