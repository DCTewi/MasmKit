;eg0703.asm in Windows Console
	include io32.inc
mean	proto c,:dword,:dword	;����������ʹ��C���Թ淶
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
mean	proc c uses ebx ecx edx,d:dword,num:dword
    local sum:dword ;����ֲ�����
	mov ebx,d	;EBX������ָ��
	mov ecx,num	;ECX��Ԫ�ظ���
	mov sum,0	;SUM�����ֵ
	xor edx,edx	;EDX��ָ������Ԫ��
mean1:	mov eax,[ebx+edx*4]	;ȡһ������
	add sum,eax	;���
	add edx,1	;ָ����һ������
	cmp edx,ecx	;�Ƚϸ���
	jb mean1	;ѭ��
    mov eax,sum
	cdq	;���ۼӺ�EAX������չ��EDX
	idiv ecx	;�з�����������EAX��ƽ��ֵ��������EDX�У�
	ret
mean	endp
	end start
