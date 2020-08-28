.386
        mov ebx, 01001100h
;check the status of bit 0 and set it to 1
        bts ebx, 0	;cf = 0, ebx = 01001001h