; eg0409.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	call readsid	;����һ���з���������EAX����ֵ
	cmp eax,0	;�Ƚ�EAX��0
	jge nonneg	;�������㣺EAX��0��ת��
	neg eax	;���������㣺EAX��0��Ϊ���������󲹵���ֵ
nonneg:	call dispuid	;��֧��������ʾ���

	exit 0
	end start