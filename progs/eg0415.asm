;eg0415.asm in Windows Console
	include io32.inc
	.data
array	dword -3,0,20,900,587,-632,777,234,-34,-56		;����һ������
count	= lengthof array	;�����Ԫ�ظ���
max	dword ?	;������ֵ

	.code
start:
	mov ecx,count-1	;Ԫ�ظ�����1��ѭ������
	mov esi,offset array
	mov eax,[esi]	;ȡ����һ��Ԫ�ظ�EAX�������ݴ����ֵ
again:	add esi,4
	cmp eax,[esi]	;����һ�����ݱȽ�
	jge next	;�Ѿ��ǽϴ�ֵ��������һ��ѭ���Ƚ�
	mov eax,[esi]	;EAXȡ�ø��������
next:	loop again	;����ѭ��
	mov max,eax	;�������ֵ

	exit 0
	end start