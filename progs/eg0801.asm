; eg0801.asm in DOS
	include io16.inc	;����16λ��������ļ�
	.data	;���ݶ�
msg	byte 'Hello, Assembly!',13,10,0		; ����Ҫ��ʾ���ַ���
	.code	;�����
start:		;������ʼλ��
	mov ax,@data
	mov ds,ax
	mov eax,offset msg	;ָ���ַ�����ƫ�Ƶ�ַ
	call dispmsg	;����I/O�ӳ�����ʾ��Ϣ
	exit 0	;��������ִ�н���
	end start	;������
