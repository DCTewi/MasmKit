; eg0304.asm in Windows Console
	include io32.inc
	.data
qvar1	qword 6778300082347856h	;64λ����1
qvar2	qword 6776200012348998h	;64λ����2

	.code
start:
	mov eax,dword ptr qvar1	;ȡ��32λ
	add eax,dword ptr qvar2	;�ӵ�32λ������CF
	mov edx,dword ptr qvar1+4	;ȡ��32λ
	adc edx,dword ptr qvar2+4	;�Ӹ�32λ��ͬʱҲ����CF
	call disprd

	exit 0
	end start