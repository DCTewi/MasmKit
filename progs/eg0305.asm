; eg0305.asm in Windows Console
	include io32.inc
	.data
msg	byte 'welcome',0
	.code
start:
	mov ecx,(lengthof msg)-1	;ECX�����ַ�������
	mov ebx,0	;EBX��0ָ��ͷһ����ĸ
again:	sub msg[ebx],'a'-'A'	;Сд��ĸ��20Hת��Ϊ��д
	inc ebx	;ָ����һ����ĸ
	loop again	;ѭ��
	mov eax,offset msg
	call dispmsg	;��ʾ

	exit 0
	end start