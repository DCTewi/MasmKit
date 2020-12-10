; eg0501.asm in Windows Console
	include io32.inc
	.data

	.code
start:
        mov eax,1
		mov ebp,5
		call subp
retp1:	mov ecx,3
retp2:	mov edx,4
		call disprd

	exit 0
subp	proc	;过程定义，过程名为subp
		push ebp
		mov ebp,esp
		mov esi,[ebp+4]
			;ESI＝CALL下一条指令（标号RETP1）的偏移地址
		mov edi,offset retp2	;EDI＝标号RETP2的偏移地址
		mov ebx,2
		pop ebp	;弹出堆栈，保持堆栈平衡
		ret	;子程序返回
subp	endp	;过程结束

	end start