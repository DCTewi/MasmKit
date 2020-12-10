; eg0608a.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	xor eax,eax	;被加数EAX清0
	mov ecx,100
	.while ecx!=0
	    add eax,ecx	;从100,99,...,2,1倒序累加
	    dec ecx
	.endw
	call dispuid	;显示累加和

	exit 0
	end start