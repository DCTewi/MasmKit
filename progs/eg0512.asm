; eg0512.asm in Windows Console
	include io32.inc
	;宏定义
printf	macro format,var
	mov al,var
	ifidni <format>,<b>
	call dispbb	;;二进制显示用格式符“b”
	exitm	;;不再进行宏展开
	endif
	ifidni <format>,<x>
	call disphb	;;十六进制显示用格式符“x”
	exitm
	endif
	ifidni <format>,<d>
	call dispsib	;;十进制显示用格式符“d”
	exitm
	endif
	ifidni <format>,<c>
	call dispc	;;字符显示用格式符“c”
	endif
	endm

	.data
var	byte 01100100b
	.code
start:
	printf b,var	;二进制形式显示：01100100
	call dispcrlf	;回车换行（用于分隔）
	printf x,var	;十六进制形式显示：64
	call dispcrlf	;回车换行（用于分隔）
	printf d,var	;十进制形式显示：100
	call dispcrlf	;回车换行（用于分隔）
	printf c,var	;字符显示：d

	exit 0
	end start