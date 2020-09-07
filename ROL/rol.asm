;swap the halves of the eax register:
        mov ax, 0ffff0000h
        mov cl, 16
        rol eax, cl	;eax = 0000ffffh
        