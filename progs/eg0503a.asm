; eg0503a.asm in Windows Console
	include io32.inc
	.data
regd	byte 'EAX=',8 dup (0),'H',0	;��ʾEAX���ݣ�Ԥ��8���ַ����ֽڣ��ռ�
	.code
start:
	mov eax, 1234abcdh	;����һ��Ҫ��ʾ������
	xor ebx,ebx	;ʹ��EBX���Ѱַ����REGD�ַ���
	mov ecx,8	;8λʮ��������
again:	rol eax,4	;��4λѭ����λ�����4λ����Ϊ�ӳ������ڲ���
	push eax	;�ӳ�������AL���ؽ����������Ҫ����EAX�е�����
	call htoasc	;�����ӳ���
	mov regd+4[ebx],al	;����ת�����ASCII��
	pop eax	;�ָ����������
	inc ebx
	loop again
	mov eax,offset regd
	call dispmsg	;��ʾ

	exit 0
htoasc	proc 
	and eax,0fh	;ȡAL��4λ
	mov al,ASCII[eax] 	;����
	ret
	;�ӳ���ľֲ�����
ASCII	byte '0123456789ABCDEF'
htoasc	endp

	end start