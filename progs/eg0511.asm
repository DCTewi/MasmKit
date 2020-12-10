; eg0511.asm in Windows Console
	include io32.inc
	;宏定义

	.data
char = 20h	;定义第一个可显示字符：空格，其ASCII值是20H
space	byte char
	repeat 94-1	;;标准ASCII表，有94个可显示字符
	    char = char +1
	    byte char
	endm
	byte 0

	.code
start:
	mov eax,offset space
	call dispmsg
	exit 0
	end start