; eg0501.asm in Windows Console
	include io32.inc
	.data

	.code
start:
        mov eax,1
		mov ebp,5
		call subp
retp1:	mov ecx,3
retp2:	mov edx,4
		call disprd

	exit 0
subp	proc	;���̶��壬������Ϊsubp
		push ebp
		mov ebp,esp
		mov esi,[ebp+4]
			;ESI��CALL��һ��ָ����RETP1����ƫ�Ƶ�ַ
		mov edi,offset retp2	;EDI�����RETP2��ƫ�Ƶ�ַ
		mov ebx,2
		pop ebp	;������ջ�����ֶ�ջƽ��
		ret	;�ӳ��򷵻�
subp	endp	;���̽���

	end start