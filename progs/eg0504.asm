; eg0504.asm in Windows Console
	include io32.inc
	.data
array	dword 1234567890,-1234,0,1,-987654321,32767,-32768,5678,-5678,9000
writebuf	byte 12 dup(0)	;显示缓冲区

	.code
start:
	mov ecx,lengthof array
	mov ebx,0
again:	mov eax,array[ebx*4] 	;EAX＝入口参数
	call write	;调用子程序，显示一个数据
	call dispcrlf	;光标回车换行以便显示下一个数据
	inc ebx
	loop again

	exit 0
write	proc	;显示有符号十进制数的子程序，EAX＝入口参数
	push ebx	;保护寄存器
	push ecx
	push edx
	mov ebx,offset writebuf	;EBX指向显示缓冲区
	test eax,eax	;判断数据是零、正数或负数
	jnz write1	;不是零，跳转
	mov byte ptr [ebx],'0'	;是零，设置“0”
	inc ebx
	jmp write5	;转向显示
write1:	jns write2	;是正数，跳转
	mov byte ptr [ebx],'-'	;是负数，设置负号“－”
	inc ebx
	neg eax	;数据求补（绝对值）
write2:	mov ecx,10
	push ecx	;10压入堆栈，作为退出标志
write3:	cmp eax,0	;数据（商）为零，转向保存
	jz write4 
	xor edx,edx	;零位扩展被除数为EDX.EAX
	div ecx	;数据除以10：EDX.EAX÷10
	add edx,30h	;余数（0～9）转换为ASCII码
	push edx	;数据各位先低位后高位压入堆栈
	jmp write3
write4:	pop edx	;数据各位先高位后低位弹出堆栈
	cmp edx,ecx	;是结束标志10，转向显示
	je write5
	mov [ebx],dl	;数据保存到缓冲区
	inc ebx
	jmp write4
write5:	mov byte ptr [ebx],0	;给显示内容加上结尾标志
	mov eax,offset writebuf
	call dispmsg
	pop edx	;恢复寄存器
	pop ecx
	pop ebx
	ret	;子程序返回
write	endp

	end start