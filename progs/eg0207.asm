;eg0207.asm
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
	mov eax,dword ptr array
	mov ebx,type bvar
	mov ecx,type wvar
	mov edx,type dvar
	mov esi,lengthof array
	mov edi,sizeof array
	mov ebp,arr_size
	call disprd
	
	exit 0
	end start
