; eg0608a.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	xor eax,eax	;������EAX��0
	mov ecx,100
	.while ecx!=0
	    add eax,ecx	;��100,99,...,2,1�����ۼ�
	    dec ecx
	.endw
	call dispuid	;��ʾ�ۼӺ�

	exit 0
	end start