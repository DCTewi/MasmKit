; eg0403.asm in Windows Console
	include io32.inc
	.data
var	byte 01100100b
	.code
start:
	mov al,var
	call dispbb	;��������ʽ��ʾ��01100100
	call dispcrlf	;�س����У����ڷָ���
	mov al,var
	call disphb	;ʮ��������ʽ��ʾ��64
	call dispcrlf	;�س����У����ڷָ���
	mov al,var
	call dispuib	;ʮ������ʽ��ʾ��100
	call dispcrlf	;�س����У����ڷָ���
	mov al,var
	call dispc	;�ַ���ʾ��d
	exit 0
	end start