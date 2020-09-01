.286
;output a sequence of 10 bytes to port 300h
;(port number is taken conditionally)
str_10 db 10 dup (0)
adr_str dd str_10
        lds si, adr_str
        mov dx, 300h
rep outsb    