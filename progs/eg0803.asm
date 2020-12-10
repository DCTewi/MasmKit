;eg0803.asm in DOS
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
	rep movsb	;重复进行字符串传送
	mov ah,9	;显示字符串
	mov edx,offset dstmsg 
	int 21h
	mov ax,4c00h
	int 21h
	end start 
