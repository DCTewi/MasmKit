;eg0803a.asm in DOS
	.model small
	.686
	.stack
	.data 
srcmsg	byte 'Try your best, why not.','$'
dstmsg	byte sizeof srcmsg dup(?)
	.code 
start:	mov ax,@data
	mov ds,ax	;设置数据段DS
	mov es,ax	;设置附加段ES＝DS
	mov esi,offset srcmsg	;ESI＝源字符串地址
	mov edi,offset dstmsg	;ESI＝源字符串地址
	mov ecx,lengthof srcmsg	;ECX＝字符串长度
	cld	;地址增量传送

	mov edx,ecx	;字符串长度，转存EDX
	shr ecx,2	;长度除以4
	rep movsd	;以双字为单位重复传送
	mov ecx,edx 
	and ecx,11b	;求出剩余的字符串长度（0～3）
	rep movsb	;以字节为单位传送剩余的字符

	mov ah,9	;显示字符串
	mov edx,offset dstmsg 
	int 21h
	mov ax,4c00h
	int 21h
	end start 
