; eg0504.asm in Windows Console
	include io32.inc
	.data
array	dword 1234567890,-1234,0,1,-987654321,32767,-32768,5678,-5678,9000
writebuf	byte 12 dup(0)	;��ʾ������

	.code
start:
	mov ecx,lengthof array
	mov ebx,0
again:	mov eax,array[ebx*4] 	;EAX����ڲ���
	call write	;�����ӳ�����ʾһ������
	call dispcrlf	;���س������Ա���ʾ��һ������
	inc ebx
	loop again

	exit 0
write	proc	;��ʾ�з���ʮ���������ӳ���EAX����ڲ���
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

	end start