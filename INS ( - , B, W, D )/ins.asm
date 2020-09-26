.286
;enter 10 bytes from port 300h (bgr port number conditionally) 
;into the byte chain in memory at the address
str_10	db  	10 dup (0)
adr_str dd  	str_10
    	les 	di, adr_str
    	mov 	dx, 300h
rep 	insb
...