; eg0506.asm in Windows Console
	include io32.inc
	.data
count	= 5
array	dword count dup(0)
temp	dword ?	;共享变量
readbuf	byte 30 dup(0)

	.code
start:
	mov ecx,count
	mov ebx,offset array
again:	call read	;调用子程序，输入一个数据
	mov eax,temp	;获得出口参数
	mov [ebx],eax	;存放到数据缓冲区
	add ebx,4
	dec ecx
	jnz again

	exit 0
read	proc	;输入有符号十进制数的子程序
	push eax	;出口参数：变量TEMP＝补码表示的二进制数值
	push ebx	;说明：负数用“－”引导
	push ecx
	push edx
read0:	mov eax,offset readbuf
	call readmsg	;输入一个字符串
	test eax,eax
	jz readerr	;没有输入数据，转向错误处理
	cmp eax,12
	ja readerr	;输入超过12个字符，转向错误处理
	mov edx,offset readbuf	;EDX指向输入缓冲区
	xor ebx,ebx	;EBX保存结果
	xor ecx,ecx	;ECX为正负标志，0为正，－1为负
	mov al,[edx]	;取一个字符
	cmp al,'+'	;是“＋”，继续
	jz read1
	cmp al,'-'	;是“－”，设置－1标志
	jnz read2
	mov ecx,-1
read1:	inc edx	;取下一个字符
	mov al,[edx]
	test al,al	;是结尾0，转向求补码
	jz read3
read2:	cmp al,'0'	;不是0～9之间的数码，则输入错误
	jb readerr
	cmp al,'9'
	ja readerr
	sub al,30h	;是0～9之间的数码，则转换为二进制数
	imul ebx,10	;原数值乘10：EBX＝EBX×10
	jc readerr	;CF＝1，说明乘积溢出，输入数据超出32位范围，出错
	movzx eax,al	;零位扩展，便于相加
	add ebx,eax	;原数值乘10后，与新数码相加
	cmp ebx,80000000h	;数据超过231，出错
	jbe read1	;继续转换下一个数位
readerr:	mov eax,offset errmsg	;显示出错信息
	call dispmsg
	jmp read0
	;
read3:	test ecx,ecx	;判断是正数还是负数
	jz read4
	neg ebx	;是负数，进行求补
	jmp read5
read4:	cmp ebx,7fffffffh	;正数超过231-1，出错
	ja readerr
read5:	mov temp,ebx	;设置出口参数
	pop edx
	pop ecx
	pop ebx
	pop eax
	ret	;子程序返回
errmsg	byte 'Input error, enter again: ',0
read	endp

	end start