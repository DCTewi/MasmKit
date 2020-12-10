; eg0502.asm in Windows Console
	include io32.inc
	.data

	.code
start:
		call dpcrlf

	exit 0
dpcrlf	proc	;回车换行子程序
	push eax	;保护寄存器
	mov al,0dh	;输出回车字符
	call dispc	;子程序中调用子程序，实现子程序嵌套
	mov al,0ah	;输出换行字符
	call dispc	;子程序中调用子程序，实现子程序嵌套
	pop eax	;恢复寄存器
	ret	;子程序返回
dpcrlf	endp

	end start