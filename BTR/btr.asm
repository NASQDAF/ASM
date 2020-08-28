.386
        mov ebx, 01001100h
;check the status of bit 8 and reset it to 0
        btr ebx, 8	;cf = 1 and ebx = 01001000h