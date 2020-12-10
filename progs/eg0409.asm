; eg0409.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	call readsid	;输入一个有符号数，从EAX返回值
	cmp eax,0	;比较EAX与0
	jge nonneg	;条件满足：EAX≥0，转移
	neg eax	;条件不满足：EAX＜0，为负数，需求补得正值
nonneg:	call dispuid	;分支结束，显示结果

	exit 0
	end start