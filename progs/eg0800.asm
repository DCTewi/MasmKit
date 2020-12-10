; eg0800.asm in DOS
	include io16.inc
	.data
		; 数据定义
	.code
start:
    mov ax,@data
    mov ds,ax
		; 主程序
	exit 0
		; 子程序
	end start