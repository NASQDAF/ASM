;load the address of the fifth into the bx register
array element mas
.data
mas	db 10 dup (0)
.code
...
	mov	di, 4
	lea	bx, mas [di]
;or
	lea	bx, mas [4]
;or
	lea	bx, mas + 4
