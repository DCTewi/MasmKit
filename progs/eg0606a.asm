;eg0606a.asm in Windows Console
	include io32.inc
mean	proto,:dword,:dword	;����������ʹ��.MODEL���ָ����STDCALL���Թ淶
	.data 
array	dword 675, 354, -34, 198, 267, 0, 9, 2371, -67, 4257
	.code
start:	;�����򣺵�����ƽ��ֵ�ӳ���Ȼ����ʾ
	invoke mean,addr array,lengthof array
	call dispsid	;��ʾ
	exit 0
	;�ӳ��򣺼���32λ�з�����ƽ��ֵ
	;��ڲ�����D��ʾ�����ַ��NUM��ʾԪ�ظ���
	;���ڲ�����EAX��ƽ��ֵ
mean	proc uses ebx ecx edx,d:dword,num:dword
	mov ebx,d	;EBX������ָ��
	mov ecx,num	;ECX��Ԫ�ظ���
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
	end start
