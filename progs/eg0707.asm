;eg0707.asm in Windows Console using C Library
	include io32.inc
	includelib bin\msvcrt.lib
printf	proto c,:ptr byte,:vararg
scanf	proto c,:ptr byte,:vararg 
	.data
msg1	byte 'Enter a real number:  ',0
format1	byte '%f',0
var	dword ?
msg2	byte 'The codes in machine:  %X',0dh,0ah,0
	.code
start:
	invoke printf,addr msg1
	invoke scanf,addr format1,addr var
	invoke printf,addr msg2,var
	exit 0
	end start
