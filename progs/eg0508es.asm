;文件名：eg0508es.asm，例5-8程序的子程序
    include io32.inc
    public rdhd,dphd,write
    extern temp:dword
	.data	;数据段
	writebuf	byte 12 dup(0)	;十进制输出的显示缓冲区
    .code   ;代码段，子程序
rdhd	proc c	;十六进制输入子程序
	push ebx	;出口参数：EAX=输入的数据
	push ecx
rdhd1:	xor ebx,ebx	;EBX用于存放十六进制结果
	mov ecx,8	;限制输入字符的个数
rdhd2:	call readc	;输入一个字符
	cmp al,'0'	;检测键入字符是否合法
	jb rderr	;不合法则返回重新输入
	cmp al,'9'
	jbe rdhd4	;输入数码：0～9，减30H
	cmp al,'A'
	jb rderr
	cmp al,'F'
	jbe rdhd3	;输入大写字母：A～F，减7后、再减30H
	cmp al,'a'
	jb rderr
	cmp al,'f'	;输入小写字母：a～f，减20H、减7后、再减30H
	ja rderr
	sub al,20h	;减20H
rdhd3:	sub al,7	;减7
rdhd4:	sub al,30h	;减30H
	shl ebx,4	;EBX左移4位对应十六进制一位
	or bl,al	;BL和AL相加
	loop rdhd2	;循环键入字符
	mov eax,ebx	;通过EAX返回结果
	pop ecx
	pop ebx
	ret
rderr:	mov eax,offset errmsg
	call dispmsg
	jmp rdhd1
errmsg	byte 0dh,0ah,'Input error, enter again: ',0
rdhd	endp
dphd	proc c	;十六进制输出子程序（参考例5-3）
	push eax	;入口参数：temp=输出的数据
	push ecx
	mov eax,temp	;使用共享变量传递的参数
	mov ecx,8	;8位十六进制数
dphd1:	rol eax,4	;高4位循环移位进入低4位
	push eax	;保存EAX中的数据
	and al,0fh	;只取AL的低4位
	or al,30h
	cmp al,39h
	jbe dphd2
	add al,7
dphd2:	call dispc	;显示一个数位
	pop eax	;恢复保存的数据
	loop dphd1
	pop ecx
	pop eax
	ret
dphd	endp
write	proc c	;显示有符号十进制数的子程序，EAX＝入口参数
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
    end
