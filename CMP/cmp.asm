len equ 10
...
        cmp ax, len
        jne m1  	;jump if (ax) <> len
        jmp m2  	;jump if (ax) = len