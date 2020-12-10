; eg0608c.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	xor eax,eax	;被加数EAX清0
	mov ecx,100
	.repeat
	    add eax,ecx
	.untilcxz
	call dispuid	;显示累加和

	exit 0
	end start