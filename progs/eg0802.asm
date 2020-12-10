; eg0802.asm in DOS
	.model small
	.686
	.stack
	.data	;数据段
msg	byte 'Hello, Assembly!',13,10,'$'		;定义要显示的字符串，注意结尾字符
	.code	;代码段
start:		;程序起始位置
	mov ax,@data
	mov ds,ax
	mov ah,9
	mov dx,offset msg	;指定字符串的偏移地址
	int 21h	;DOS功能调用显示信息
	mov ax,4c00h	;执行结束
	int 21h
	end start	;汇编结束
