; Convert a two-digit packed BCD number to its symbolic equivalent
u_BCD db 25h	;packed BCD number
s_ch dw 0		;place for result
...
        xor ax, ax		;clear ax
        mov al, u_BCD
        shl ax, 4		;ax = 0250
        mov al, u_BCD	;ax = 0225
		
;conversion to symbolic representation:
        and ax, 3f3fh	;ax = 3235h
        mov s_ch, ax