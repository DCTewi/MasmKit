; eg0411.asm in Windows Console
	include io32.inc
	.data
dvar	dword 0bd630422h	;����һ������
	.code
start:
	mov ebx,dvar
	shl ebx,1	;EBX���λ����CF��־
	jc one	;CF��1�������λΪ1��ת��
	mov al,'0'	;CF��0�������λΪ0��AL='0'
	jmp two	;һ��Ҫ������һ����֧��
one:	mov al,'1'	;AL='1'
two:	call dispc	;��ʾ

	exit 0
	end start