transLATe Byte from table
 
Command scheme: xlat byte_table_address xlatb

Purpose: substitution of a byte in the al register by a byte from a sequence (table) of bytes in memory.

Work algorithm:

    1) calculate the address equal to ds: bx + (al);
    2) replace the byte in the al register by the byte from memory at the calculated address.

In spite of the presence of the xlat command's table_address_expression operand, the address of the byte sequence from which a substitution byte will be selected in the register al must be preloaded in the ds: bx(ebx) pair. The xlat command allows replacing a segment. 

State of flags after command execution:

	command execution does not affect flags