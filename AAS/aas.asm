; 8 - 5
mov al, 05h
mov bl, 08h
sub al, bl  ;al = 0fdh
aas         ;al = 07, cf = af = 1
or al, 30h  ;al = 37h 
; output the result to the screen
mov ah, 2
mov dl, al
int 21h
