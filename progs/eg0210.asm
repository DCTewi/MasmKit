; eg0210.asm in Windows Console
	include io32.inc
	.data
bvar	byte 87h,49h
dvar	dword 12345678h,12
	.code
start:
	mov cl,bvar
	mov edx,dvar
	mov bvar+1,dh
	mov word ptr dvar+2,dx
	mov dvar,87654321h
	mov dvar+4,dvar
	exit 0
	end start