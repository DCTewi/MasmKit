;eg0803.asm in DOS
	.model small
	.686
	.stack
	.data 
srcmsg	byte 'Try your best, why not.','$'
dstmsg	byte sizeof srcmsg dup(?)
	.code 
start:	mov ax,@data
	mov ds,ax	;�������ݶ�DS
	mov es,ax	;���ø��Ӷ�ES��DS
	mov esi,offset srcmsg	;ESI��Դ�ַ�����ַ
	mov edi,offset dstmsg	;ESI��Դ�ַ�����ַ
	mov ecx,lengthof srcmsg	;ECX���ַ�������
	cld	;��ַ��������
	rep movsb	;�ظ������ַ�������
	mov ah,9	;��ʾ�ַ���
	mov edx,offset dstmsg 
	int 21h
	mov ax,4c00h
	int 21h
	end start 
