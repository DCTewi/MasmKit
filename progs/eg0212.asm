; eg0212.asm in Windows Console
	include io32.inc
	.data
srcmsg	byte 'Try your best, why not.'
dstmsg	byte sizeof srcmsg dup(?)
	.code
start:
	mov ecx,lengthof srcmsg	;ECX���ַ����ַ�����
	mov ebx,0	;EBXָ���׸��ַ�
again:	mov al,srcmsg[ebx]	;ȡԴ��һ���ַ���AL
	mov dstmsg[ebx],al	;��AL���͸�Ŀ�Ĵ�
	add ebx,1	;��1��ָ����һ���ַ�
	loop again	;�ַ�����ECX��1����Ϊ0����ת��AGAIN��Ŵ�ִ��
	mov eax,offset dstmsg	;��ʾĿ���ַ�������
	call dispmsg
	exit 0
	end start