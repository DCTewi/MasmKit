; eg0212.asm in Windows Console
	include io32.inc
	.data
srcmsg	byte 'Try your best, why not.'
dstmsg	byte sizeof srcmsg dup(?)
	.code
start:
	mov ecx,lengthof srcmsg	;ECX＝字符串字符个数
	mov ebx,0	;EBX指向首个字符
again:	mov al,srcmsg[ebx]	;取源串一个字符送AL
	mov dstmsg[ebx],al	;将AL传送给目的串
	add ebx,1	;加1，指向下一个字符
	loop again	;字符个数ECX减1，不为0，则转到AGAIN标号处执行
	mov eax,offset dstmsg	;显示目的字符串内容
	call dispmsg
	exit 0
	end start