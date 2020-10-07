	in  	al,60h	;read the scan code
	push 	ax  	;save it for a while
	in  	al,61h	;read port 61h
	or  	al,80h	;high bit of byte from port 61h to 1
	out 	61h,al	;confirming the fact of receiving the scan code
	pop 	ax
	out 	61h,al	;restored byte in port 61h