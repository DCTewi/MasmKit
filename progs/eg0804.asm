;eg0804.asm in DOS
	.model small
	.code
start:	mov dx,0b800h
	mov es,dx
	mov di,0	;����ES��DI��B800H��0000H
	mov cx,25*80	;����CX��������
	mov ax,0720h	;����AX���������
	cld
	rep stosw
	mov ax,4c00h
	int 21h
	end start
