; eg0404.asm in Windows Console
	include io32.inc
	.data
nvar	dword ?

	.code
start:
		jmp labl1	;相对寻址
		nop
labl1:	jmp near ptr labl2	;相对近转移
		nop
labl2:	mov eax,offset labl3 
		jmp eax	;寄存器间接寻址
		nop
labl3:	mov eax,offset labl4
		mov nvar,eax
		jmp nvar	;存储器间接寻址
		nop
labl4:

	exit 0
	end start