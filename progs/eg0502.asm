; eg0502.asm in Windows Console
	include io32.inc
	.data

	.code
start:
		call dpcrlf

	exit 0
dpcrlf	proc	;�س������ӳ���
	push eax	;�����Ĵ���
	mov al,0dh	;����س��ַ�
	call dispc	;�ӳ����е����ӳ���ʵ���ӳ���Ƕ��
	mov al,0ah	;��������ַ�
	call dispc	;�ӳ����е����ӳ���ʵ���ӳ���Ƕ��
	pop eax	;�ָ��Ĵ���
	ret	;�ӳ��򷵻�
dpcrlf	endp

	end start