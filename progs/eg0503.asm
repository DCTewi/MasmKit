; eg0503.asm in Windows Console
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
htoasc	proc	;��AL��4λ����һλʮ��������ת��ΪASCII��
	and al,0fh	;ֻȡAL�ĵ�4λ
	or al,30h	;AL��4λ���3��ʵ�ּ�30H
	cmp al,39h	;��0��9������A��F
	jbe htoend
	add al,7	;��A��F����ASCII���ټ���7
htoend:	ret	;�ӳ��򷵻�
htoasc	endp 

	end start