; eg0309.asm in Windows Console
	include io32.inc
	.data
qvar	qword 1234567887654321h
ascii	byte '38'
bcd	byte ?

	.code
start:
	mov ecx,4 
again:	shr dword ptr qvar+4,1	;���ƶ���32λ
	rcr dword ptr qvar,1	;���ƶ���32λ
	loop again
	;
	mov al,ascii
	and al,0fh	;�����4λ��Ӧ���ַ�
	mov ah,ascii+1
	shl ah,4	;�����4λ��Ӧ���ַ�
	or al,ah	;����γ�ѹ��BCD��
	mov bcd,al

	exit 0
	end start