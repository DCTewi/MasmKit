; eg0509.asm in Windows Console
	include io32.inc
	;宏定义
rfbit	macro bit1,bit2
	xor ebx,ebx	;EBX清0，用于保存字符
	rol  eax,bit1	;将某个标志左移BIT1位，进入当前CF
	adc ebx,30h	;转换为ASCII字符
	mov rfmsg+bit2,bl	;保存于字符串BIT2位置
	endm

	.data
rfmsg	byte 'OF=0, SF=0, ZF=0, AF=0, PF=0, CF=0',13,10,0
	.code
start:
	mov eax,50
	sub eax,80	;假设一个运算
	pushfd
	pop eax	;将标志位寄存器的内容存入EAX

	rfbit 21,3	;显示OF（原来的OF需左移21位，进入当前CF）
	rfbit 4,9	;显示SF（原来的SF再左移4位，进入当前CF）
	rfbit 1,15	;显示ZF（原来的ZF再左移1位，进入当前CF）
	rfbit 2,21	;显示AF（原来的AF再左移2位，进入当前CF）
	rfbit 2,27	;显示PF（原来的PF再左移2位，进入当前CF）
	rfbit 2,33	;显示CF（原来的CF再左移2位，进入当前CF）
	mov eax,offset rfmsg
	call dispmsg
	exit 0
	end start