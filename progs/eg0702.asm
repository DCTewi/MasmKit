;eg0702.asm for Visual C++
	.686
	.model flat,c
mean	proto d:ptr dword,num:dword	;过程声明
	.code
mean	proc uses ebx ecx edx,d:ptr dword,num:dword	; 过程定义
	mov ebx,d	;EBX＝数组地址
	mov ecx,num	;ECX＝数据个数
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
	end
