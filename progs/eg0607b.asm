; eg0607b.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	mov ebx,0bd630422h
	shl ebx,1	;EBX���λ����CF��־
	.IF CARRY?
	mov al,'1'	;���CF��1������AL='1'
	.ELSE 
	mov al,'0'	;����CF��0������AL='0'
	.ENDIF
	call dispc	;��ʾ

	exit 0
	end start