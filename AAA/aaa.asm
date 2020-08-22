; 08 + 05
mov     ah,08h  ;ah=08h
mov     al,05h  ;al=05h
add     al,ah   ;al=al+ah=05h+08h=0dh 
xor     ah,ah   ;ah=0
aaa             ;ah=01h,al=03h
