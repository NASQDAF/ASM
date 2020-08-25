chiclo dw 2020
rez dd 0
...
        add ax, chislo			;(ax) = (ax) + ch
        mov word ptr rez, ax
        jnc dop_sum 			;branch if the result did not go beyond the bit grid
        adc word ptr rez + 2.0 	;expand the result to take into account the transfer to the highest rank
dop_sum:
...