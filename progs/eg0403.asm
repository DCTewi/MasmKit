; eg0403.asm in Windows Console
	include io32.inc
	.data
var	byte 01100100b
	.code
start:
	mov al,var
	call dispbb	;二进制形式显示：01100100
	call dispcrlf	;回车换行（用于分隔）
	mov al,var
	call disphb	;十六进制形式显示：64
	call dispcrlf	;回车换行（用于分隔）
	mov al,var
	call dispuib	;十进制形式显示：100
	call dispcrlf	;回车换行（用于分隔）
	mov al,var
	call dispc	;字符显示：d
	exit 0
	end start