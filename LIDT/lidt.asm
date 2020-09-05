.386
;structure for describing pseudo-descriptors gdtr and idtr
point STRUC
lim dw 0
adr dd 0
 ENDS
.data
point_idt point
.code
...
;load idtr
        xor 	eax, eax
        mov 	ax, IDT_SEG
        shl 	eax, 4
        mov 	point_idt.adr, eax
        lidt 	point_idt
...