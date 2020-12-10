; eg0308.asm in Windows Console
	include io32.inc
	.data
wvar	word 34000

	.code
start:
	xor eax,eax	;EAX＝0
	mov ax,wvar	;AX＝要乘以10的无符号数
	shl eax,1	;左移一位等于乘2
	mov ebx,eax	;EBX＝EAX×2
	shl eax,2	;再左移2位，EAX＝EAX×8
	add eax,ebx	;EAX＝EAX×10
	call dispuid	;显示乘积
	call dispcrlf	;换行
	imul eax,10	;EAX＝EAX×10
	call dispuid	;显示乘积

	exit 0
	end start