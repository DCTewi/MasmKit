; eg0404.asm in Windows Console
	include io32.inc
	.data
nvar	dword ?

	.code
start:
		jmp labl1	;���Ѱַ
		nop
labl1:	jmp near ptr labl2	;��Խ�ת��
		nop
labl2:	mov eax,offset labl3 
		jmp eax	;�Ĵ������Ѱַ
		nop
labl3:	mov eax,offset labl4
		mov nvar,eax
		jmp nvar	;�洢�����Ѱַ
		nop
labl4:

	exit 0
	end start