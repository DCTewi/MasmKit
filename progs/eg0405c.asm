; eg0405c.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	mov eax,888	;假设一个数据
	add eax,1	;个数加1
	rcr eax,1	;数据右移进行折半
	call dispuid	;显示结果

	exit 0
	end start