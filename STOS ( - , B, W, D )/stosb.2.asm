;an example of how stosb and lodsb work together:
;copy one line o another up to the first space
str1		db 	'Some string'
len_str1=$-str
str2    	db 	len_str1 dup (' ')
...
		   mov	ax,@data
		   mov 	ds,ax
		   mov 	es,ax
		   cld
		   mov 	cx,len_str1
		   lea 	si,str1
		   lea 	di,str2
m1: 	 lodsb
		   cmp	al,' '
		    jc	exit	;exit if space
		 stosb
		  loop	m1
exit: