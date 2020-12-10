; eg0503a.asm in Windows Console
	include io32.inc
	.data
regd	byte 'EAX=',8 dup (0),'H',0	;显示EAX内容，预留8个字符（字节）空间
	.code
start:
	mov eax, 1234abcdh	;假设一个要显示的数据
	xor ebx,ebx	;使用EBX相对寻址访问REGD字符串
	mov ecx,8	;8位十六进制数
again:	rol eax,4	;高4位循环移位进入低4位，作为子程序的入口参数
	push eax	;子程序利用AL返回结果，所以需要保存EAX中的数据
	call htoasc	;调用子程序
	mov regd+4[ebx],al	;保存转换后的ASCII码
	pop eax	;恢复保存的数据
	inc ebx
	loop again
	mov eax,offset regd
	call dispmsg	;显示

	exit 0
htoasc	proc 
	and eax,0fh	;取AL低4位
	mov al,ASCII[eax] 	;换码
	ret
	;子程序的局部数据
ASCII	byte '0123456789ABCDEF'
htoasc	endp

	end start