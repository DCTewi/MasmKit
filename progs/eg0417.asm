; eg0417.asm in Windows Console
	include io32.inc
	.data
string	byte 'Do you have fun with Assembly?',0	;以0结尾的字符串

	.code
start:
	xor ebx,ebx	;EBX用于记录字符个数，同时也用于指向字符的指针
again:	mov al,string[ebx]
	cmp al,0	;用指令“test al,al”更好
	jz done
	inc ebx	;个数加1
	jmp again	;继续循环
done:	mov eax,ebx	;显示个数
	call dispuid 

	exit 0
	end start