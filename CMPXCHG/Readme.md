CoMPare and eXCHanGe

Command scheme: cmpxchg sink, source (battery)

Purpose: comparison and exchange of values between source and destination.

Work algorithm:

	1) compare the elements source and destination;
		1.a) if source and destination are not equal, then:
				1.a.1) set zf = 0;
				1.a.2) send the contents of the receiver operand to the source (register al/ax/eax).
		1.b) if source and destination are equal, then:
				1.b.1) set zf = 1;
				1.b.2) send the contents of the source operand (al/ax/eax register) to the destination operand.

State of flags after command execution:

	11 	07 	06 	04 	02 	00
	OF 	SF 	ZF 	AF 	PF 	CF
	r 	r 	r 	r 	r 	r