;Shift the contents of register bx to the right so that bit zero becomes one
.386
        mov bx, 0002h; bx = 0000 0010b
...
        bsf cx, bx; cx = 0001h
        jz null
        shr bx, cl; bx = 0000 0001b
...
null: