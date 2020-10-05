;example of stosb and lodsb working together:
;copy one line to another to the first space
str1 	db  	'Some string'
len_str1=$-str
str2 	db  	len_str1 dup (' ')
...
    	mov 	ax,@data
    	mov 	ds,ax
    	mov 	es,ax
    	cld
    	mov 	cx,len_str1
    	lea 	si,str1
    	lea 	di,str2
m1: 	lodsb
    	cmp 	al,' '
    	jc  	exit 	;exit if the space
    	stosb
    	loop 	m1
exit: