.286
;structure for describing the pseudo-descriptor gdtr
point 	STRUC
lim 	dw 	0
adr 	dd 	0
ENDS
.data
point_gdt 	point
.code
...
;load gdtr
        xor  eax, eax
        mov  ax, gdt_seg
        shl  eax, 4
        mov  point_gdt.adr, eax
        lgdt point_gdt
...