; eg0405.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	mov eax,885	;����һ������
	shr eax,1	;�������ƽ����۰�
	jnc goeven	;����Ϊ0����CF��0��������������Ҫ����ת��
	add eax,1	;��������Ϊ1����CF��1�����м�1����
goeven:	call dispuid	;��ʾ���

	exit 0
	end start