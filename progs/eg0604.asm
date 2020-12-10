;eg0604.asm in Windows Graphic
	.686
	.model flat,stdcall
	option casemap:none
	includelib bin\kernel32.lib
	includelib bin\user32.lib
ExitProcess	proto,:DWORD
MessageBoxA	PROTO :DWORD,:DWORD,:DWORD,:DWORD
MessageBox	equ <MessageBoxA>
NULL	equ 0
MB_OK	equ 0
	.data
szCaption	byte 'ª∂”≠',0
outbuffer	byte 'ƒ„∫√£¨ª„±‡”Ô—‘£°',0
	.code
start:
	invoke MessageBox,NULL,addr outbuffer,addr szCaption,MB_OK
	invoke ExitProcess,NULL
	end start


