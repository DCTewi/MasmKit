; eg0608c.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	xor eax,eax	;������EAX��0
	mov ecx,100
	.repeat
	    add eax,ecx
	.untilcxz
	call dispuid	;��ʾ�ۼӺ�

	exit 0
	end start