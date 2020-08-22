; 18 / 9
mov     ah,01h  ;ah=01h
mov     al,08h  ;al=08h => ax=0108h
mov     bl,09   ;bl=09h
aad             ;al=12h 
div     bl      ;al=02h,ah=00h
or      al,30h  ;al=32h 