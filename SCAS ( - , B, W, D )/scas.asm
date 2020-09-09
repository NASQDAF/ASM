;count the number of spaces in string str
.data
str db '...'
len_str = $ - str
.code
        mov ax, @ data
        mov ds, ax
        mov es, ax
        lea di, str
        mov cx, len_str	;string length - in cx
        mov al, ''
        mov bx, 0    	;counter for counting spaces in the string
        cld
cycl:
repe scasb
        jcxz exit   	;jump to exit if the entire chain has been viewed
        inc bx
        jmp cycl
exit: ...
