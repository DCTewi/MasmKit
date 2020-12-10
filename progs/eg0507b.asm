; eg0507b.asm in Windows Console
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
	push ebp	;入口参数：顺序压入数据个数和数据缓冲区偏移地址
	mov ebp,esp	;出口参数：EAX＝平均值
	push ebx	;保护寄存器
	push ecx
	push edx
	push esi
	push edi
	mov ebx,[ebp+8]	;EBX＝堆栈中取出的偏移地址
	mov ecx,[ebp+12]	;ECX＝堆栈中取出的数据个数
    cmp ecx,0
    jnz mean0
    xor eax,eax
    jmp mean2
mean0:	xor esi,esi	;ESI＝求和的低32位值
	mov edi,esi	;EDI＝求和的高32位值
mean1:	mov eax,[ebx]	;EAX＝取出一个数据
	cdq	;EAX符号扩展到EDX
	add esi,eax	;求和低32位
	adc edi,edx	;求和高32位
	add ebx,4	;指向下一个数据
	dec ecx	;数据个数减少一个
	jnz mean1	;循环（这两条指令等同于LOOP指令）
	mov eax,esi	;累加和在EDX.EAX
	mov edx,edi
	idiv dword ptr [ebp+12]	;有符号数除法，EAX＝平均值（余数在EDX中）
mean2:	pop edi	;恢复寄存器
	pop esi
	pop edx
	pop ecx
	pop ebx
	pop ebp
	ret
mean	endp

	end start