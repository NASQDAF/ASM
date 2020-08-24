 ;Addition of binary numbers of arbitrary dimension
.data
		sl1 dd 01fe544fh
		sl2 dd 005044cdh
   elderREZ db 0			;to account for carry over from the most significant bit of the result
		rez dd 0
.code
...
        mov ax, sl1
        add ax, sl2		;addition of the least significant words of the terms
        mov rez, ax
        mov ax, sl + 2
        adc ax, sl2 + 2	;addition of high-order terms plus cf
        mov rez + 2, ax
        adc elderREZ, 0	;consider possible carry