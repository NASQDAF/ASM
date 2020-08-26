.386
        mov ebx, 01001100h
        bt ebx, 8		;check bit 8 status and set cf = to 1
        jc m1   		;jump to m1 if the checked bit is 1
...