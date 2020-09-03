HaLT
 
Purpose: to stop the microprocessor before interruption or reboot.

Work algorithm:

	transfer of the microprocessor to the stop state.

State of flags after command execution:

	command execution does not affect flags

Application:
As a result of the command execution, the microprocessor goes into the stop state. It can be removed from this state by signals at the inputs RESET, NMI, INTR. If an interrupt is used to restart the microprocessor, the stored value of the cs: eip/ip pair points to the command following hlt. To illustrate the use of this command, consider another way to switch a microprocessor from protected to real mode and return it back to real mode. As is known, the microprocessor does not provide special means for such switching. A microprocessor reset can be initiated by outputting a byte with the value 0feh to the 64h keyboard port. After that, the microprocessor goes into real mode and the BIOS program gets control, which analyzes the shutdown byte in the CMOS memory at address 0fh. We are interested in two values ​​of this byte - 5h and 0ah:

	1) 5h - reset of the microprocessor initiates the initialization of the programmable interrupt controller to the value of the base vector 08h. Further, control is transferred to the address located in the cell of the BIOS data area 0040: 0067;
	2) 0ah - a microprocessor reset initiates a direct transfer of control to the address in the BIOS data area cell 0040: 0067 (that is, without reprogramming the interrupt controller).

Thus, if you do not use interrupts, then it is enough to set the 0fh byte in CMOS memory to 0ah. Previously, of course, you must initialize the BIOS data area cell 0040: 0067 with the value of the address to which you want to transfer control after the reset. The port numbers 070h and 071h are used for programming the CMOS memory. First, the desired number of the CMOS memory cell is entered into port 070h, and then the new value of this cell is entered into port 071h.

