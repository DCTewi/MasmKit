; eg0512.asm in Windows Console
	include io32.inc
	;�궨��
printf	macro format,var
	mov al,var
	ifidni <format>,<b>
	call dispbb	;;��������ʾ�ø�ʽ����b��
	exitm	;;���ٽ��к�չ��
	endif
	ifidni <format>,<x>
	call disphb	;;ʮ��������ʾ�ø�ʽ����x��
	exitm
	endif
	ifidni <format>,<d>
	call dispsib	;;ʮ������ʾ�ø�ʽ����d��
	exitm
	endif
	ifidni <format>,<c>
	call dispc	;;�ַ���ʾ�ø�ʽ����c��
	endif
	endm

	.data
var	byte 01100100b
	.code
start:
	printf b,var	;��������ʽ��ʾ��01100100
	call dispcrlf	;�س����У����ڷָ���
	printf x,var	;ʮ��������ʽ��ʾ��64
	call dispcrlf	;�س����У����ڷָ���
	printf d,var	;ʮ������ʽ��ʾ��100
	call dispcrlf	;�س����У����ڷָ���
	printf c,var	;�ַ���ʾ��d

	exit 0
	end start