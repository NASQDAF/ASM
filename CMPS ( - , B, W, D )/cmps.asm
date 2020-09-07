.data
  obl1 	db 	'String to compare'
  obl2	db 	'String to compare'
a_obl1 	dd 	obl1
a_obl2 	dd 	obl2
.code
...
        cld         	;look up the chain in ascending direction
        mov	cx, 20  	;chain length
        lds	si, a_obl1	;source address in ds: si pair
        les	di, a_obl2	;destination address in ds: si pair
repe 	cmpsb          	;compare while equal
        jnz m1      	;if not the end of the chain, then there are different elements
...                  	;actions if the chains match
...
m1:
...                 	;actions if the chains don't match
        