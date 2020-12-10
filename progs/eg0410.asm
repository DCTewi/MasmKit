; eg0410.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	call readc	;输入一个字符，从AL返回值
	cmp al,'A'	;与大写字母A比较
	jb done	;比大写字母A小，不是大写字母，转移
	cmp al,'Z'	;与大写字母Z比较
	ja done	;比大写字母Z大，不是大写字母，转移
	or al,20h	;转换为小写
	call dispcrlf	;回车换行（用于分隔）
	call dispc	;显示小写字母
done:

	exit 0
	end start