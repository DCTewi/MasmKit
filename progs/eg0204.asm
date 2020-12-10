;eg0204.asm
	include io32.inc
	.data
minint	= 10
dvar1	dword 0,80000000h,0ffffffffh,-80000000h,0,7fffffffh
dvar2	dword 1,-1,38,-38,38h,-38h
dvar3	dword ?
	dword 2010h,1020h
dvar5	dword minint dup(minint,?)
dvar6	dword 38323139h
bvar6	byte 39h,31h,32h,38h
	byte 0
	.code
start:
	mov eax,offset dvar6
	call dispmsg
	exit 0
	end start
