;eg0606a.asm in Windows Console
	include io32.inc
mean	proto,:dword,:dword	;过程声明，使用.MODEL语句指定的STDCALL语言规范
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
mean	proc uses ebx ecx edx,d:dword,num:dword
	mov ebx,d	;EBX＝数组指针
	mov ecx,num	;ECX＝元素个数
	xor eax,eax	;EAX保存和值
	xor edx,edx	;EDX＝指向数组元素
mean1:	add eax,[ebx+edx*4]	;求和
	add edx,1	;指向下一个数据
	cmp edx,ecx	;比较个数
	jb mean1	;循环
	cdq	;将累加和EAX符号扩展到EDX
	idiv ecx	;有符号数除法，EAX＝平均值（余数在EDX中）
	ret
mean	endp
	end start
