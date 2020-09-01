OUTput Byte / Word / Double word String to port

Purpose: output to the port from memory of a sequence of bytes, words, double words.

Work algorithm:

    1) transfer data to the I / O port, the number of which is loaded into the dx register, from the memory cell at ds: esi / si;
    2) depending on the state of the df flag, change the value of the esi/si registers:
        2.a) if df = 0, then increase the contents of these registers by the length of the structural element of the sequence;
        2.b) if df = 1, then decrease the contents of these registers by the length of the structural element of the sequence;
    3) if the prefix is ?? present, execute the deiqrbh defined by it (see the rep/repe/repz/repne/repnz command).

State of flags after command execution:
	
	command execution does not affect flags

