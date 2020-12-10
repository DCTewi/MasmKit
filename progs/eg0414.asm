; eg0414.asm in Windows Console
	include io32.inc
	.data
array	dword 136,-138,133,130,-161	;数组
sum	dword ?	;结果变量

	.code
start:
	mov ecx,lengthof array	;ECX＝数组元素个数
	xor eax,eax	;求和初值为0
	mov ebx,eax	;数组指针为0
again:	add eax,array[ebx*(type array)]	;求和 
	inc ebx	;指向下一个数组元素
	loop again
	mov sum,eax	;保存结果
	call dispsid	;显示结果

	exit 0
	end start