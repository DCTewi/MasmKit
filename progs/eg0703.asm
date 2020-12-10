;eg0703.asm in Windows Console
	include io32.inc
mean	proto c,:dword,:dword	;过程声明，使用C语言规范
	.data 
array	dword 675, 354, -34, 198, 267, 0, 9, 2371, -67, 4257
	.code
start:	;主程序：调用求平均值子程序，然后显示
	invoke mean,addr array,lengthof array
	call dispsid	;显示
	exit 0
	;子程序：计算32位有符号数平均值
	;入口参数：D表示数组地址、NUM表示元素个数
	;出口参数：EAX＝平均值
mean	proc c uses ebx ecx edx,d:dword,num:dword
    local sum:dword ;定义局部变量
	mov ebx,d	;EBX＝数组指针
	mov ecx,num	;ECX＝元素个数
	mov sum,0	;SUM保存和值
	xor edx,edx	;EDX＝指向数组元素
mean1:	mov eax,[ebx+edx*4]	;取一个数据
	add sum,eax	;求和
	add edx,1	;指向下一个数据
	cmp edx,ecx	;比较个数
	jb mean1	;循环
    mov eax,sum
	cdq	;将累加和EAX符号扩展到EDX
	idiv ecx	;有符号数除法，EAX＝平均值（余数在EDX中）
	ret
mean	endp
	end start
