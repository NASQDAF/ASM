.386
        mov ebx, 01001100h
;checking the state of bit 8 and its reversal:
        btc ebx, 8	;cf = 1 and ebx = 01001000h