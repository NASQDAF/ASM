;fill some memory area with spaces
str	db 'Some str'
len_str=$-str
...
	mov 	ax,@data
	mov 	ds,ax
	mov 	es,ax
	cld
	mov 	al,' '
	lea 	di,str
	mov 	cx,len_str
rep	stosb	;fill str with spaces