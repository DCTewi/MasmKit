; eg0301.asm in Windows Console
	include io32.inc
	.data
ten	= 10
dvar	dword 67762000h,12345678h
	.code
start:
	mov eax,dvar+4	;EAX＝12345678H
	push eax	;将EAX内容压入堆栈
	push dword ptr ten	;将立即数以双字量压入堆栈
	push dvar	;将变量DVAR第一个数据压入堆栈
	pop eax	;栈顶数据弹出到EAX
	pop dvar+4	;栈顶数据弹出到DVAR＋4位置
	mov ebx,dvar+4	;EBX＝000000AH
	pop ecx	;栈顶数据弹出到ECX
	call disprd
	exit 0
	end start