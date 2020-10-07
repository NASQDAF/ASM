table 	db  	'abcdef'
int 	db  	0	;index value
...
        mov 	al,3
        lea 	bx,table
        xlat    	;(al) = 'c'