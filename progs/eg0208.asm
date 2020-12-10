; eg0208.asm in Windows Console
	include io32.inc
	.data
const	= 64
bvar	byte 87h,49h
dvar	dword 12345678h,12
	.code
start:
		mov al,12H
		mov ah,'d'
labl:	mov bx,-1
		mov ecx,const
		mov edx,const*4/type dvar
		mov esi,offset bvar
		mov edi,labl
		mov bvar,01001100b
		mov dvar+4,12h
		call disprd
	exit 0
	end start