; eg0507.asm in Windows Console
	include io32.inc
	.data
array	dword 675, 354, -34, 198, 267, 0, 9, 2371, -67, 4257

	.code
start:
	push lengthof array	;ѹ�����ݸ���
	push offset array	;ѹ�����ƫ�Ƶ�ַ
	call mean	;������ƽ��ֵ�ӳ��򣬳��ڲ�����EAX��ƽ��ֵ���������֣�
	add esp,8	;ƽ���ջ��ѹ����8���ֽ����ݣ�
	call dispsid	;��ʾ

	exit 0
mean	proc	;����32λ�з�����ƽ��ֵ�ӳ���
	push ebp	;��ڲ�����˳��ѹ�����ݸ���������ƫ�Ƶ�ַ
	mov ebp,esp	;���ڲ�����EAX��ƽ��ֵ
	push ebx	;�����Ĵ���
	push ecx
	push edx
	mov ebx,[ebp+8]	;EBX����ջ��ȡ����ƫ�Ƶ�ַ
	mov ecx,[ebp+12]	;ECX����ջ��ȡ�������ݸ���
	xor eax,eax	;EAX�����ֵ
	xor edx,edx	;EDX��ָ������Ԫ��
mean1:	add eax,[ebx+edx*4]	;���
	add edx,1	;ָ����һ������
	cmp edx,ecx	;�Ƚϸ���
	jb mean1	;ѭ��
	cdq	;���ۼӺ�EAX������չ��EDX
	idiv ecx	;�з�����������EAX��ƽ��ֵ��������EDX�У�
	pop edx	;�ָ��Ĵ���
	pop ecx
	pop ebx
	pop ebp
	ret
mean	endp

	end start