;find the first space in a character string
str 	db  	'Find first space'
str_size=$-str
...
		cld
		mov 	cx,str_size
		lea 	si,str
cycl:
		lodsb
		cmp 	al,' '
		loopne cycl
		jcxz m1 	;branch if there are no spaces 
		dec si  	;in si - address of space in str
...
m1