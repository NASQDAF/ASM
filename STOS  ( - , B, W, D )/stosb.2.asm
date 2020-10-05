;fill in some memory area with spaces
str 	db  	'Some string'
len_str=$-str
...
    	mov 	ax,@data
    	mov 	ds,ax
    	mov 	es,ax
    	cld
    	mov 	al,' '
    	lea 	di,str
    	mov 	cx,len_str
rep 	stosb   	;fill with spaces the string str