;�ļ�����eg0508es.asm����5-8������ӳ���
    include io32.inc
    public rdhd,dphd,write
    extern temp:dword
	.data	;���ݶ�
	writebuf	byte 12 dup(0)	;ʮ�����������ʾ������
    .code   ;����Σ��ӳ���
rdhd	proc c	;ʮ�����������ӳ���
	push ebx	;���ڲ�����EAX=���������
	push ecx
rdhd1:	xor ebx,ebx	;EBX���ڴ��ʮ�����ƽ��
	mov ecx,8	;���������ַ��ĸ���
rdhd2:	call readc	;����һ���ַ�
	cmp al,'0'	;�������ַ��Ƿ�Ϸ�
	jb rderr	;���Ϸ��򷵻���������
	cmp al,'9'
	jbe rdhd4	;�������룺0��9����30H
	cmp al,'A'
	jb rderr
	cmp al,'F'
	jbe rdhd3	;�����д��ĸ��A��F����7���ټ�30H
	cmp al,'a'
	jb rderr
	cmp al,'f'	;����Сд��ĸ��a��f����20H����7���ټ�30H
	ja rderr
	sub al,20h	;��20H
rdhd3:	sub al,7	;��7
rdhd4:	sub al,30h	;��30H
	shl ebx,4	;EBX����4λ��Ӧʮ������һλ
	or bl,al	;BL��AL���
	loop rdhd2	;ѭ�������ַ�
	mov eax,ebx	;ͨ��EAX���ؽ��
	pop ecx
	pop ebx
	ret
rderr:	mov eax,offset errmsg
	call dispmsg
	jmp rdhd1
errmsg	byte 0dh,0ah,'Input error, enter again: ',0
rdhd	endp
dphd	proc c	;ʮ����������ӳ��򣨲ο���5-3��
	push eax	;��ڲ�����temp=���������
	push ecx
	mov eax,temp	;ʹ�ù���������ݵĲ���
	mov ecx,8	;8λʮ��������
dphd1:	rol eax,4	;��4λѭ����λ�����4λ
	push eax	;����EAX�е�����
	and al,0fh	;ֻȡAL�ĵ�4λ
	or al,30h
	cmp al,39h
	jbe dphd2
	add al,7
dphd2:	call dispc	;��ʾһ����λ
	pop eax	;�ָ����������
	loop dphd1
	pop ecx
	pop eax
	ret
dphd	endp
write	proc c	;��ʾ�з���ʮ���������ӳ���EAX����ڲ���
	push ebx	;�����Ĵ���
	push ecx
	push edx
	mov ebx,offset writebuf	;EBXָ����ʾ������
	test eax,eax	;�ж��������㡢��������
	jnz write1	;�����㣬��ת
	mov byte ptr [ebx],'0'	;���㣬���á�0��
	inc ebx
	jmp write5	;ת����ʾ
write1:	jns write2	;����������ת
	mov byte ptr [ebx],'-'	;�Ǹ��������ø��š�����
	inc ebx
	neg eax	;�����󲹣�����ֵ��
write2:	mov ecx,10
	push ecx	;10ѹ���ջ����Ϊ�˳���־
write3:	cmp eax,0	;���ݣ��̣�Ϊ�㣬ת�򱣴�
	jz write4 
	xor edx,edx	;��λ��չ������ΪEDX.EAX
	div ecx	;���ݳ���10��EDX.EAX��10
	add edx,30h	;������0��9��ת��ΪASCII��
	push edx	;���ݸ�λ�ȵ�λ���λѹ���ջ
	jmp write3
write4:	pop edx	;���ݸ�λ�ȸ�λ���λ������ջ
	cmp edx,ecx	;�ǽ�����־10��ת����ʾ
	je write5
	mov [ebx],dl	;���ݱ��浽������
	inc ebx
	jmp write4
write5:	mov byte ptr [ebx],0	;����ʾ���ݼ��Ͻ�β��־
	mov eax,offset writebuf
	call dispmsg
	pop edx	;�ָ��Ĵ���
	pop ecx
	pop ebx
	ret	;�ӳ��򷵻�
write	endp
    end
