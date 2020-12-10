; eg0801.asm in DOS
	include io16.inc	;包含16位输入输出文件
	.data	;数据段
msg	byte 'Hello, Assembly!',13,10,0		; 定义要显示的字符串
	.code	;代码段
start:		;程序起始位置
	mov ax,@data
	mov ds,ax
	mov eax,offset msg	;指定字符串的偏移地址
	call dispmsg	;调用I/O子程序显示信息
	exit 0	;程序正常执行结束
	end start	;汇编结束
