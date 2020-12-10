; eg0505.asm in Windows Console
	include io32.inc
	.data
count	= 5
array	dword count dup(0)
temp	dword ?	;共享变量

	.code
start:
	mov ecx,count
	mov ebx,offset array
again:	call rdbd	;调用子程序，输入一个数据
	mov eax,temp	;获得出口参数
	mov [ebx],eax	;存放到数据缓冲区
	add ebx,4
	loop again

	exit 0
rdbd	proc	;二进制输入子程序
	push eax	;出口参数：共享变量TEMP
	push ebx
 	push ecx
rdbd1:	xor ebx,ebx	;EBX用于存放二进制结果
	mov ecx,32	;限制输入字符的个数
rdbd2: 
	call readc	;输入一个字符
	cmp al,'0'	;检测键入字符是否合法
	jb rderr	;不合法则返回重新输入
	cmp al,'1'
	ja rderr
	sub al,'0'	;对输入的字符进行转化
	shl ebx,1	;EBX的值乘以2
	or bl,al	;BL和AL相加
	loop rdbd2	;循环键入字符
	mov temp,ebx	;把EBX的二进制结果存放TEMP返回
    call dispcrlf	;分行
	pop ecx
	pop ebx
	pop eax
	ret
rderr:	mov eax,offset errmsg	;显示错误信息
	call dispmsg
	jmp rdbd1
errmsg	byte 0dh,0ah,'Input error, enter again: ',0
rdbd	endp

	end start