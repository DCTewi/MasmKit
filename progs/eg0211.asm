; eg0211.asm in Windows Console
	include io32.inc
	.data
srcmsg	byte 'Try your best, why not.'
dstmsg	byte sizeof srcmsg dup(?)
	.code
start:
	mov ecx,lengthof srcmsg	;ECX���ַ����ַ�����
	mov esi,offset srcmsg	;ESI��Դ�ַ����׵�ַ
	mov edi,offset dstmsg	;EDI��Ŀ���ַ����׵�ַ
again:	mov al,[esi]	;ȡԴ��һ���ַ���AL
	mov [edi],al	;��AL���͸�Ŀ�Ĵ�
	add esi,1	;Դ��ָ���1��ָ����һ���ַ�
	add edi,1	;Ŀ�Ĵ�ָ���1��ָ����һ���ַ�
	loop again	;�ַ�����ECX��1����Ϊ0����ת��AGAIN��Ŵ�ִ��
	mov eax,offset dstmsg	;��ʾĿ���ַ�������
	call dispmsg
	exit 0
	end start