; eg0608b.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	xor eax,eax	;������EAX��0
	mov ecx,100
	.repeat
	    add eax,ecx
	    dec ecx
	.until ecx==0
	call dispuid	;��ʾ�ۼӺ�

	exit 0
	end start