; eg0507.asm in Windows Console
	include io32.inc
	.data
array	dword 675, 354, -34, 198, 267, 0, 9, 2371, -67, 4257

	.code
start:
	push lengthof array	;压入数据个数
	push offset array	;压数组的偏移地址
	call mean	;调用求平均值子程序，出口参数：EAX＝平均值（整数部分）
	add esp,8	;平衡堆栈（压入了8个字节数据）
	call dispsid	;显示

	exit 0
mean	proc	;计算32位有符号数平均值子程序
	push ebp	;入口参数：顺序压入数据个数和数组偏移地址
	mov ebp,esp	;出口参数：EAX＝平均值
	push ebx	;保护寄存器
	push ecx
	push edx
	mov ebx,[ebp+8]	;EBX＝堆栈中取出的偏移地址
	mov ecx,[ebp+12]	;ECX＝堆栈中取出的数据个数
	xor eax,eax	;EAX保存和值
	xor edx,edx	;EDX＝指向数组元素
mean1:	add eax,[ebx+edx*4]	;求和
	add edx,1	;指向下一个数据
	cmp edx,ecx	;比较个数
	jb mean1	;循环
	cdq	;将累加和EAX符号扩展到EDX
	idiv ecx	;有符号数除法，EAX＝平均值（余数在EDX中）
	pop edx	;恢复寄存器
	pop ecx
	pop ebx
	pop ebp
	ret
mean	endp

	end start