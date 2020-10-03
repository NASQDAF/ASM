;change the order of bytes in a word
ch1 	label	byte
        dw  	0f85ch
...
        mov 	al,ch1
        xchg 	ch1+1,al
        mov 	ch1,al