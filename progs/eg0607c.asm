; eg0607c.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	call readc	;输入一个字符，从AL返回值
	.IF al >= 'A' && al <= 'Z'	;是大写字母（A与Z之间）
	or al,20h	;转换为小写
	call dispcrlf	;回车换行（用于分隔）
	call dispc	;显示小写字母
	.ENDIF

	exit 0
	end start