str1 	db  	'str1 is copied to str2'
len_str1=$-str1
a_str1 	dd  	str1
str2 	db  	len_str1 dup ('')
a_str2 	dd  	str2
...
    	mov 	cx,len_str1
    	lds 	si,str1
    	les 	di,str2
    	cld
rep 	movsb