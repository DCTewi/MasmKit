; eg0410.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	call readc	;����һ���ַ�����AL����ֵ
	cmp al,'A'	;���д��ĸA�Ƚ�
	jb done	;�ȴ�д��ĸAС�����Ǵ�д��ĸ��ת��
	cmp al,'Z'	;���д��ĸZ�Ƚ�
	ja done	;�ȴ�д��ĸZ�󣬲��Ǵ�д��ĸ��ת��
	or al,20h	;ת��ΪСд
	call dispcrlf	;�س����У����ڷָ���
	call dispc	;��ʾСд��ĸ
done:

	exit 0
	end start