; eg0607c.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	call readc	;����һ���ַ�����AL����ֵ
	.IF al >= 'A' && al <= 'Z'	;�Ǵ�д��ĸ��A��Z֮�䣩
	or al,20h	;ת��ΪСд
	call dispcrlf	;�س����У����ڷָ���
	call dispc	;��ʾСд��ĸ
	.ENDIF

	exit 0
	end start