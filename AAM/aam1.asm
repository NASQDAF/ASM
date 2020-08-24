; 8 * 9
mov     ah,08h  	;ah=08h
mov     al,09h  	;al= 09h
mul     ah      	;al=48h
aam             	;ah=07h,al=02h
or      ax,3030h    ;ax=3732h