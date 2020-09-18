;extract the value of the flags register and reverse the value of the cf flag
	pushf
	  pop 	ax
	  xor 	ax,01h
	 push 	ax
	 popf