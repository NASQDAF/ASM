.286
;structure for describing pseudo-descriptors gdtr and idtr
point 	STRUC
lim 	dw  	0
adr 	dd  	0
		ENDS
.data
point_idt    	point
.code
...
;read the content of idtr
		sidt 	point_idt
...