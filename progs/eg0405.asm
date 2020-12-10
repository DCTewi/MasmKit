; eg0405.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	mov eax,885	;假设一个数据
	shr eax,1	;数据右移进行折半
	jnc goeven	;余数为0，即CF＝0条件成立，不需要处理，转移
	add eax,1	;否则余数为1，即CF＝1，进行加1操作
goeven:	call dispuid	;显示结果

	exit 0
	end start