SCanning A String of Bytes / Words / Doublewords

Purpose: search for a value in a sequence (chain) of elements in memory.

Work algorithm:

    1) perform subtraction (chain element- (eax/ax/al)). The chain element is localized with the pair es: edi/di. Replacing the es segment is not allowed;
    2) set flags by the result of subtraction;
    3) change the value of the edi/di register by an amount equal to the length of the chain element. The sign of this value depends on the state of the flag df:
        3.a) df = 0 - the value is positive, that is, viewing from the beginning of the chain to its end;
        3.b) df = 1 - the value is negative, that is, scanning from the end of the chain to its beginning.

State of flags after command execution:

	11	07	06	04	02	00
	OF	SF	ZF	AF	PF	CF
	r	r	r	r	r 	r


