.286			;this is a mandatory directive, since bound is included
				;in the microprocessor instruction set starting with i286
.data
BoundMas 	label 	word
Low_Bound 	dw 		0
Upp_Bound 	dw 		20
mas 	dw 	10 dup 	(?)
...
        xor di, di		;clear index register
cycl:
        mov ax, mas [di];brute force of array elements
        add di, 2
        bound di, BoundMas
;if the value in di does not fall within the bounds, then the interrupt 5 handler 
;will be called, where you can adjust the ip/eip value in the stack in order 
;to exit the infinite loop, for example, to the M2 label or perform other actions
        jmp cycl
M2:
...