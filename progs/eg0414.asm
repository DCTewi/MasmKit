; eg0414.asm in Windows Console
	include io32.inc
	.data
array	dword 136,-138,133,130,-161	;����
sum	dword ?	;�������

	.code
start:
	mov ecx,lengthof array	;ECX������Ԫ�ظ���
	xor eax,eax	;��ͳ�ֵΪ0
	mov ebx,eax	;����ָ��Ϊ0
again:	add eax,array[ebx*(type array)]	;��� 
	inc ebx	;ָ����һ������Ԫ��
	loop again
	mov sum,eax	;������
	call dispsid	;��ʾ���

	exit 0
	end start