; eg0506.asm in Windows Console
	include io32.inc
	.data
count	= 5
array	dword count dup(0)
temp	dword ?	;�������
readbuf	byte 30 dup(0)

	.code
start:
	mov ecx,count
	mov ebx,offset array
again:	call read	;�����ӳ�������һ������
	mov eax,temp	;��ó��ڲ���
	mov [ebx],eax	;��ŵ����ݻ�����
	add ebx,4
	dec ecx
	jnz again

	exit 0
read	proc	;�����з���ʮ���������ӳ���
	push eax	;���ڲ���������TEMP�������ʾ�Ķ�������ֵ
	push ebx	;˵���������á���������
	push ecx
	push edx
read0:	mov eax,offset readbuf
	call readmsg	;����һ���ַ���
	test eax,eax
	jz readerr	;û���������ݣ�ת�������
	cmp eax,12
	ja readerr	;���볬��12���ַ���ת�������
	mov edx,offset readbuf	;EDXָ�����뻺����
	xor ebx,ebx	;EBX������
	xor ecx,ecx	;ECXΪ������־��0Ϊ������1Ϊ��
	mov al,[edx]	;ȡһ���ַ�
	cmp al,'+'	;�ǡ�����������
	jz read1
	cmp al,'-'	;�ǡ����������ã�1��־
	jnz read2
	mov ecx,-1
read1:	inc edx	;ȡ��һ���ַ�
	mov al,[edx]
	test al,al	;�ǽ�β0��ת������
	jz read3
read2:	cmp al,'0'	;����0��9֮������룬���������
	jb readerr
	cmp al,'9'
	ja readerr
	sub al,30h	;��0��9֮������룬��ת��Ϊ��������
	imul ebx,10	;ԭ��ֵ��10��EBX��EBX��10
	jc readerr	;CF��1��˵���˻�������������ݳ���32λ��Χ������
	movzx eax,al	;��λ��չ���������
	add ebx,eax	;ԭ��ֵ��10�������������
	cmp ebx,80000000h	;���ݳ���231������
	jbe read1	;����ת����һ����λ
readerr:	mov eax,offset errmsg	;��ʾ������Ϣ
	call dispmsg
	jmp read0
	;
read3:	test ecx,ecx	;�ж����������Ǹ���
	jz read4
	neg ebx	;�Ǹ�����������
	jmp read5
read4:	cmp ebx,7fffffffh	;��������231-1������
	ja readerr
read5:	mov temp,ebx	;���ó��ڲ���
	pop edx
	pop ecx
	pop ebx
	pop eax
	ret	;�ӳ��򷵻�
errmsg	byte 'Input error, enter again: ',0
read	endp

	end start