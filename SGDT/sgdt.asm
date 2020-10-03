.286
;structure for describing the pseudo-descriptor gdtr
point   	STRUC
lim     	dw  	0
adr     	dd  	0
	    	ENDS
.data
point_gdt	point
.code
...
;read the contents of gdtr
    		sgdt	point_gdt
...