; eg0802.asm in DOS
	.model small
	.686
	.stack
	.data	;���ݶ�
msg	byte 'Hello, Assembly!',13,10,'$'		;����Ҫ��ʾ���ַ�����ע���β�ַ�
	.code	;�����
start:		;������ʼλ��
	mov ax,@data
	mov ds,ax
	mov ah,9
	mov dx,offset msg	;ָ���ַ�����ƫ�Ƶ�ַ
	int 21h	;DOS���ܵ�����ʾ��Ϣ
	mov ax,4c00h	;ִ�н���
	int 21h
	end start	;������
