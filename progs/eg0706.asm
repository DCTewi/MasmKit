;eg0706.asm in Windows Console using C Library
	.686
	.model flat,stdcall
	option casemap:none
	includelib bin\kernel32.lib
ExitProcess proto,:DWORD
	includelib bin\msvcrt.lib
printf	proto c,:ptr byte,:vararg
	.data
msg	byte 'Hello, World!',0dh,0ah,0
	.code
start:
	invoke printf,addr msg
	invoke ExitProcess,0
	end start
