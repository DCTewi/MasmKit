;eg0804.asm in DOS
	.model small
	.code
start:	mov dx,0b800h
	mov es,dx
	mov di,0	;设置ES：DI＝B800H∶0000H
	mov cx,25*80	;设置CX＝填充个数
	mov ax,0720h	;设置AX＝填充内容
	cld
	rep stosw
	mov ax,4c00h
	int 21h
	end start
