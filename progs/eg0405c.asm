; eg0405c.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	mov eax,888	;����һ������
	add eax,1	;������1
	rcr eax,1	;�������ƽ����۰�
	call dispuid	;��ʾ���

	exit 0
	end start