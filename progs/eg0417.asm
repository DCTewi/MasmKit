; eg0417.asm in Windows Console
	include io32.inc
	.data
string	byte 'Do you have fun with Assembly?',0	;��0��β���ַ���

	.code
start:
	xor ebx,ebx	;EBX���ڼ�¼�ַ�������ͬʱҲ����ָ���ַ���ָ��
again:	mov al,string[ebx]
	cmp al,0	;��ָ�test al,al������
	jz done
	inc ebx	;������1
	jmp again	;����ѭ��
done:	mov eax,ebx	;��ʾ����
	call dispuid 

	exit 0
	end start