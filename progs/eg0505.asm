; eg0505.asm in Windows Console
	include io32.inc
	.data
count	= 5
array	dword count dup(0)
temp	dword ?	;�������

	.code
start:
	mov ecx,count
	mov ebx,offset array
again:	call rdbd	;�����ӳ�������һ������
	mov eax,temp	;��ó��ڲ���
	mov [ebx],eax	;��ŵ����ݻ�����
	add ebx,4
	loop again

	exit 0
rdbd	proc	;�����������ӳ���
	push eax	;���ڲ������������TEMP
	push ebx
 	push ecx
rdbd1:	xor ebx,ebx	;EBX���ڴ�Ŷ����ƽ��
	mov ecx,32	;���������ַ��ĸ���
rdbd2: 
	call readc	;����һ���ַ�
	cmp al,'0'	;�������ַ��Ƿ�Ϸ�
	jb rderr	;���Ϸ��򷵻���������
	cmp al,'1'
	ja rderr
	sub al,'0'	;��������ַ�����ת��
	shl ebx,1	;EBX��ֵ����2
	or bl,al	;BL��AL���
	loop rdbd2	;ѭ�������ַ�
	mov temp,ebx	;��EBX�Ķ����ƽ�����TEMP����
    call dispcrlf	;����
	pop ecx
	pop ebx
	pop eax
	ret
rderr:	mov eax,offset errmsg	;��ʾ������Ϣ
	call dispmsg
	jmp rdbd1
errmsg	byte 0dh,0ah,'Input error, enter again: ',0
rdbd	endp

	end start