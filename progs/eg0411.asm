; eg0411.asm in Windows Console
	include io32.inc
	.data
dvar	dword 0bd630422h	;假设一个数据
	.code
start:
	mov ebx,dvar
	shl ebx,1	;EBX最高位移入CF标志
	jc one	;CF＝1，即最高位为1，转移
	mov al,'0'	;CF＝0，即最高位为0：AL='0'
	jmp two	;一定要跳过另一个分支体
one:	mov al,'1'	;AL='1'
two:	call dispc	;显示

	exit 0
	end start