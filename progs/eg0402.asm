; eg0402.asm in Windows Console
	include io32.inc
	.data
buffer	byte 'The processor vendor ID is ',12 dup(0),0
bufsize	= sizeof buffer

	.code
start:
	mov eax,0
	cpuid	;执行处理器识别指令
	mov dword ptr buffer+bufsize-13,ebx
	mov dword ptr buffer+bufsize-9,edx
	mov dword ptr buffer+bufsize-5,ecx
	mov eax,offset buffer	;显示信息
	call dispmsg

	exit 0
	end start