; eg0303a.asm in Windows Console
	include io32.inc
	.data
num	byte 6,7,7,8,3,0,0,0	;Ҫ��ת��������
tab	byte '0123456789'	;�����
	.code
start:
	mov ecx,lengthof num
	mov esi,offset num
	mov ebx,offset tab	;EBXָ������
again:	mov al,[esi]	;AL��Ҫת��������
	xlat	;����
	call dispc	;��ʾ
	add esi,1	;ָ����һ������
	loop again	;ѭ��

	exit 0
	end start