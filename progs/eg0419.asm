; eg0419.asm in Windows Console
	include io32.inc
	.data
array	dword 587,-632,777,234,-34		;����һ������
count	= lengthof array	;�����Ԫ�ظ���

	.code
start:
	mov ecx,count	;ECX������Ԫ�ظ���
	dec ecx	;Ԫ�ظ�����1Ϊ��ѭ������
outlp:	mov edx,ecx	;EDX����ѭ������
	mov ebx,offset array
inlp:	mov eax,[ebx]	;ȡǰһ��Ԫ��
	cmp eax,[ebx+1]	;���һ��Ԫ�رȽ�
	jng next
	;ǰһ�������ں�һ��Ԫ�أ��򲻽��н���
	xchg eax,[ebx+1]	;���򣬽��н���
	mov [ebx],eax
next:	inc ebx	;��һ��Ԫ��
	dec edx
	jnz inlp	;��ѭ��β
	loop outlp	;��ѭ��β

	exit 0
	end start