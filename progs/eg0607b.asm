; eg0607b.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	mov ebx,0bd630422h
	shl ebx,1	;EBX最高位移入CF标志
	.IF CARRY?
	mov al,'1'	;如果CF＝1，设置AL='1'
	.ELSE 
	mov al,'0'	;否则CF＝0，设置AL='0'
	.ENDIF
	call dispc	;显示

	exit 0
	end start