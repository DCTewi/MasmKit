; eg0405b.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	mov eax,887	;����һ������
	shr eax,1	;�������ƽ����۰�
	adc eax,0	;������CF��1�����м�1������������CF��0��û�м�1
	call dispuid	;��ʾ���

	exit 0
	end start