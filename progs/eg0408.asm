; eg0408.asm in Windows Console
	include io32.inc
	.data
in_msg1	byte 'Enter a number: ',0
in_msg2	byte 'Enter another number: ',0
out_msg1	byte 'Two numbers are equal: ',0
out_msg2	byte 'The less number is: ',0
out_msg3	byte 13,10,'The greater number is: ',0

	.code
start:
	mov eax,offset in_msg1	;��ʾ�����һ������
	call dispmsg
	call readsid	;�����һ������
	mov ebx,eax	;���浽EBX
	mov eax,offset in_msg2	;��ʾ����ڶ�������
	call dispmsg
	call readsid	;����ڶ�������
	mov ecx,eax	;���浽ECX
	cmp ebx,ecx	;�������ݽ��бȽ�
	jne nequal	;��������ȣ�ת��
	mov eax,offset out_msg1	;�������
	call dispmsg
	mov eax,ebx
	call dispsid	;��ʾ��ȵ�����
	jmp done	;ת�Ƶ�����
nequal:	jl first	;EBX��С������Ҫ������ת��
	xchg ebx,ecx	;EBX�����С����ECX����ϴ���
first:	mov eax,offset out_msg2	;��ʾ��С��
	call dispmsg
	mov eax,ebx	;��С����EBX��
	call dispsid
	mov eax,offset out_msg3	;��ʾ�ϴ���
	call dispmsg
	mov eax,ecx	;�ϴ�����ECX��
	call dispsid
done:

	exit 0
	end start