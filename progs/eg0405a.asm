; eg0405a.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	mov eax,886	;假设一个数据
	shr eax,1	;数据右移进行折半
	jc goodd	;余数为1，即CF＝1条件成立，转移到分支体，进行加1操作
	jmp goeven	;余数为0，即CF＝0，不需要处理，转移到显示！
goodd:	add eax,1	;进行加1操作
goeven:	call dispuid	;显示结果

	exit 0
	end start