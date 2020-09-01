REPeat string operation

Purpose: specifying the conditional and unconditional repetition of the chaining operation following the given command.

Work algorithm:

	The work algorithm depends on the specific prefix. The rep, repe and repz prefixes actually have the same opcode, their actions depend on the chain command they precede:

    1) rep is used before the following chained commands and their short equivalents: movs, stos, ins, outs. Rep actions:
        1.a) parsing cx content:
            1.a.0) if cx <> 0, then execute the chained command following the given prefix and go to step 2;
            1.a.1) if cx = 0, then transfer control to the command following the given chain command (exit the loop by rep);
        1.b) decrease the value cx = cx – 1 and return to step 1;
    2) repe and repz are used before the following chaining commands and their short equivalents: cmps, scas. The repe and repz actions:
        2.a) parsing cx content and zf flag:
            2.a.0) if cx <> 0 or zf <> 0, then execute the chained command following the given prefix and go to step 2;
            2.a.1) if cx = 0 or zf = 0, then transfer control to the command following the given chain command (exit the loop by rep);
        2.b) decrease the value cx = cx-1 and return to step 1;
    3) repne and repnz also share the same opcode and are meaningful when used before the following chained commands and their short equivalents: cmps, scas. Actions repne and repnz:
        3.a) parsing cx content and zf flag:
            3.a.0) if cx <> 0 or zf = 0, then execute the chained command following the given prefix and go to step 2;
            3.a.1) if cx = 0 or zf <> 0, then transfer control to the command following the given chain command (exit the loop by rep);
        3.b) decrease the value cx = cx – 1 and return to step 1.

State of flags after command execution:

	06
	ZF
	r