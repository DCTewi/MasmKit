; eg0305.asm in Windows Console
	include io32.inc
	.data
msg	byte 'welcome',0
	.code
start:
	mov ecx,(lengthof msg)-1	;ECX等于字符串长度
	mov ebx,0	;EBX＝0指向头一个字母
again:	sub msg[ebx],'a'-'A'	;小写字母减20H转换为大写
	inc ebx	;指向下一个字母
	loop again	;循环
	mov eax,offset msg
	call dispmsg	;显示

	exit 0
	end start