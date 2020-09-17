my_proc proc near
        push ax
        push bx
;the body of the procedure in which the contents of the ax and bx registers are changed
...
        pop bx
        pop ax
        ret
        endp