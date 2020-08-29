.386	;cwde only, cwd was for i8086
	mov ebx, 10fecd23h
	mov ax, -3	;ax = 1111 1111 1111 1101
	cwde		;eax = 1111 1111 1111 1111 1111 1111 1111 1101
	add eax, ebx
        