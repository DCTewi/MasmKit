; eg0419.asm in Windows Console
	include io32.inc
	.data
array	dword 587,-632,777,234,-34		;假设一个数组
count	= lengthof array	;数组的元素个数

	.code
start:
	mov ecx,count	;ECX←数组元素个数
	dec ecx	;元素个数减1为外循环次数
outlp:	mov edx,ecx	;EDX←内循环次数
	mov ebx,offset array
inlp:	mov eax,[ebx]	;取前一个元素
	cmp eax,[ebx+1]	;与后一个元素比较
	jng next
	;前一个不大于后一个元素，则不进行交换
	xchg eax,[ebx+1]	;否则，进行交换
	mov [ebx],eax
next:	inc ebx	;下一对元素
	dec edx
	jnz inlp	;内循环尾
	loop outlp	;外循环尾

	exit 0
	end start