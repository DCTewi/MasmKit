; eg0405a.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	mov eax,886	;����һ������
	shr eax,1	;�������ƽ����۰�
	jc goodd	;����Ϊ1����CF��1����������ת�Ƶ���֧�壬���м�1����
	jmp goeven	;����Ϊ0����CF��0������Ҫ����ת�Ƶ���ʾ��
goodd:	add eax,1	;���м�1����
goeven:	call dispuid	;��ʾ���

	exit 0
	end start