;eg0702.asm for Visual C++
	.686
	.model flat,c
mean	proto d:ptr dword,num:dword	;��������
	.code
mean	proc uses ebx ecx edx,d:ptr dword,num:dword	; ���̶���
	mov ebx,d	;EBX�������ַ
	mov ecx,num	;ECX�����ݸ���
	xor eax,eax	;EAX�����ֵ
	xor edx,edx	;EDX��ָ������Ԫ��
mean1:	add eax,[ebx+edx*4]	;���
	add edx,1	;ָ����һ������
	cmp edx,ecx	;�Ƚϸ���
	jb mean1	;ѭ��
	cdq	;���ۼӺ�EAX������չ��EDX
	idiv ecx	;�з�����������EAX��ƽ��ֵ��������EDX�У�
	ret
mean	endp
	end
