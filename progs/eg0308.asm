; eg0308.asm in Windows Console
	include io32.inc
	.data
wvar	word 34000

	.code
start:
	xor eax,eax	;EAX��0
	mov ax,wvar	;AX��Ҫ����10���޷�����
	shl eax,1	;����һλ���ڳ�2
	mov ebx,eax	;EBX��EAX��2
	shl eax,2	;������2λ��EAX��EAX��8
	add eax,ebx	;EAX��EAX��10
	call dispuid	;��ʾ�˻�
	call dispcrlf	;����
	imul eax,10	;EAX��EAX��10
	call dispuid	;��ʾ�˻�

	exit 0
	end start