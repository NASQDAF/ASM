;we are working in real mode, preparing to switch to protected mode:
        push es
        mov ax, 40h
        mov es, ax
        mov word ptr es: [67h], offset ret_real
;ret_real - a label in the program, from which the program should start after a reset
        mov es: [69h], cs
        mov al, 0fh  	;we will refer to cell 0fh in CMOS
        out 70h, al
        jmp $ + 2   	;let's delay a little so that the hardware works the reset without reprogramming the controller
        mov al, 0ah
        out 71h, al
;go to protected mode by setting bit 0 cr0 to 1; work in protected mode; preparing to switch back to real mode
        mov al, 01fch
        out 64h, al  	;microprocessor reset hlt stop before the physical end of the reset process
        ret_real: ...	;label to which control will be transferred after reset