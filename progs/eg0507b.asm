; eg0507b.asm in Windows Console
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
	push ebp	;��ڲ�����˳��ѹ�����ݸ��������ݻ�����ƫ�Ƶ�ַ
	mov ebp,esp	;���ڲ�����EAX��ƽ��ֵ
	push ebx	;�����Ĵ���
	push ecx
	push edx
	push esi
	push edi
	mov ebx,[ebp+8]	;EBX����ջ��ȡ����ƫ�Ƶ�ַ
	mov ecx,[ebp+12]	;ECX����ջ��ȡ�������ݸ���
    cmp ecx,0
    jnz mean0
    xor eax,eax
    jmp mean2
mean0:	xor esi,esi	;ESI����͵ĵ�32λֵ
	mov edi,esi	;EDI����͵ĸ�32λֵ
mean1:	mov eax,[ebx]	;EAX��ȡ��һ������
	cdq	;EAX������չ��EDX
	add esi,eax	;��͵�32λ
	adc edi,edx	;��͸�32λ
	add ebx,4	;ָ����һ������
	dec ecx	;���ݸ�������һ��
	jnz mean1	;ѭ����������ָ���ͬ��LOOPָ�
	mov eax,esi	;�ۼӺ���EDX.EAX
	mov edx,edi
	idiv dword ptr [ebp+12]	;�з�����������EAX��ƽ��ֵ��������EDX�У�
mean2:	pop edi	;�ָ��Ĵ���
	pop esi
	pop edx
	pop ecx
	pop ebx
	pop ebp
	ret
mean	endp

	end start