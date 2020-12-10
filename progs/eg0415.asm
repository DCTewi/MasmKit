;eg0415.asm in Windows Console
	include io32.inc
	.data
array	dword -3,0,20,900,587,-632,777,234,-34,-56		;假设一个数组
count	= lengthof array	;数组的元素个数
max	dword ?	;存放最大值

	.code
start:
	mov ecx,count-1	;元素个数减1是循环次数
	mov esi,offset array
	mov eax,[esi]	;取出第一个元素给EAX，用于暂存最大值
again:	add esi,4
	cmp eax,[esi]	;与下一个数据比较
	jge next	;已经是较大值，继续下一个循环比较
	mov eax,[esi]	;EAX取得更大的数据
next:	loop again	;计数循环
	mov max,eax	;保存最大值

	exit 0
	end start