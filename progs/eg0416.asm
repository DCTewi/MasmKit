; eg0416.asm in Windows Console
	include io32.inc
	.data
key	byte 234	;�����һ����Կ
bufnum	= 255
buffer	byte bufnum+1 dup(0)	;�������������Ҫ�Ļ�����
msg1	byte 'Enter messge: ',0
msg2	byte 'Encrypted message: ',0
msg3	byte 13,10,'Original messge: ',0

	.code
start:
	mov eax,offset msg1	;��ʾ�����ַ���
	call dispmsg
	mov eax,offset buffer	;������ڲ���EAX
	call readmsg	;���������ַ����ӳ���
	push eax	;�ַ�������������ջ
	mov ecx,eax	;ECX��ʵ��������ַ���������Ϊѭ���Ĵ���
	xor ebx,ebx	;EBXָ�������ַ�
	mov al,key	;AL����Կ
encrypt:	xor buffer[ebx],al	;������
	inc ebx
	dec ecx	;��ͬ��ָ�loop encrypt
	jnz encrypt	;������һ���ַ�
	mov eax,offset msg2
	call dispmsg
	mov eax,offset buffer	;��ʾ���ܺ������
	call dispmsg
	;
	pop ecx	;�Ӷ�ջ�����ַ���������Ϊѭ���Ĵ���
	xor ebx,ebx	;EBXָ�������ַ�
	mov al,key	;AL����Կ
decrypt:	xor buffer[ebx],al	;������
	inc ebx
	dec ecx
	jnz decrypt	;������һ���ַ�
	mov eax,offset msg3
	call dispmsg
	mov eax,offset buffer	;��ʾ���ܺ������
	call dispmsg

	exit 0
	end start