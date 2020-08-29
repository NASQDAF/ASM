.386
;retrieve the value of the eflags register and change
;the value of the cf flag is reversed
        pushfd
        pop eax
        xor eax, 01h
        push eax
        popfd