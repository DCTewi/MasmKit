; eg0416.asm in Windows Console
	include io32.inc
	.data
key	byte 234	;假设的一个密钥
bufnum	= 255
buffer	byte bufnum+1 dup(0)	;定义键盘输入需要的缓冲区
msg1	byte 'Enter messge: ',0
msg2	byte 'Encrypted message: ',0
msg3	byte 13,10,'Original messge: ',0

	.code
start:
	mov eax,offset msg1	;提示输入字符串
	call dispmsg
	mov eax,offset buffer	;设置入口参数EAX
	call readmsg	;调用输入字符串子程序
	push eax	;字符个数保存进入堆栈
	mov ecx,eax	;ECX＝实际输入的字符个数，作为循环的次数
	xor ebx,ebx	;EBX指向输入字符
	mov al,key	;AL＝密钥
encrypt:	xor buffer[ebx],al	;异或加密
	inc ebx
	dec ecx	;等同于指令：loop encrypt
	jnz encrypt	;处理下一个字符
	mov eax,offset msg2
	call dispmsg
	mov eax,offset buffer	;显示加密后的密文
	call dispmsg
	;
	pop ecx	;从堆栈弹出字符个数，作为循环的次数
	xor ebx,ebx	;EBX指向输入字符
	mov al,key	;AL＝密钥
decrypt:	xor buffer[ebx],al	;异或解密
	inc ebx
	dec ecx
	jnz decrypt	;处理下一个字符
	mov eax,offset msg3
	call dispmsg
	mov eax,offset buffer	;显示解密后的明文
	call dispmsg

	exit 0
	end start