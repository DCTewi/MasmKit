;eg0206.asm
	include io32.inc
	.data
bvar	byte 12h,34h
	org $+10 
array	word 1,2,3,4,5,6,7,8,9,10
wvar	word 5678h
arr_size	= $-array
arr_len	= arr_size/2
dvar	dword 9abcdef0h
	.code
start:
	mov al,bvar
	mov ah,bvar+1
	mov bx,wvar[2]
	mov ecx,arr_len
	mov edx,$
	mov esi,offset dvar
	mov edi,[esi]
	mov ebp,dvar
	call disprd

	exit 0
	end start
