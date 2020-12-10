; eg0411a.asm in Windows Console
	include io32.inc
	.data
dvar	dword 0bd630422h	;假设一个数据
	.code
start:
	mov ebx,dvar
	mov al,'0'	;假设最高位为0：AL='0'
	shl ebx,1	;EBX最高位移入CF标志
	jnc two	;CF＝0，即最高位为0、与假设相同，转移
	mov al,'1'	;CF＝1，即最高位为1，AL='1'
two:	call dispc	;显示

	exit 0
	end start