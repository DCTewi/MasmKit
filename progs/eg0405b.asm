; eg0405b.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	mov eax,887	;假设一个数据
	shr eax,1	;数据右移进行折半
	adc eax,0	;余数＝CF＝1，进行加1操作；余数＝CF＝0，没有加1
	call dispuid	;显示结果

	exit 0
	end start