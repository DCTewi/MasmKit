; eg0209.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	mov al,ah
	mov bx,ax
	mov ebx,eax
	mov dx,ds
	mov es,dx
	mov edi,si
	exit 0
	end start