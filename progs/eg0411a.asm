; eg0411a.asm in Windows Console
	include io32.inc
	.data
dvar	dword 0bd630422h	;����һ������
	.code
start:
	mov ebx,dvar
	mov al,'0'	;�������λΪ0��AL='0'
	shl ebx,1	;EBX���λ����CF��־
	jnc two	;CF��0�������λΪ0���������ͬ��ת��
	mov al,'1'	;CF��1�������λΪ1��AL='1'
two:	call dispc	;��ʾ

	exit 0
	end start