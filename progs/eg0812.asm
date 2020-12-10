; eg0812.asm in DOS
	.model small
	.code
new04h	proc	;中断服务程序
	sti
	push ax	;保存寄存器
	push bx
	push si
	push ds
	mov ax,cs	;数据在代码段中，故DS＝CS
	mov ds,ax
	mov si,offset intmsg
dps1:	mov al,[si]
	cmp al,0
	jz dps2
	mov bx,0	;调用ROM-BIOS功能显示AL中的字符
	mov ah,0eh
	int 10h
	inc si
	jmp dps1
dps2:	pop ds	;恢复寄存器
	pop si
	pop bx
	pop ax
	iret	;中断返回
intmsg  byte 0dh,0ah,'Overflow !',0	; 溢出后显示的信息
new04h	endp	;中断服务程序结束
	;主程序开始
start:  	mov ax,cs
	mov ds,ax	
	mov bx,0	;设置04H中断服务程序地址
	mov es,bx	;设置附加段ES＝0，指向物理地址低端
	mov ax,offset new04h 
	mov es:[4*4],ax	;设置偏移地址
	mov ax,seg new04h
	mov es:[4*4+2],ax	;设置段基地址

	mov ah,9	;显示安装信息
	mov dx,offset tsrmsg
	int 21h
	mov dx,offset start	;计算驻留内存程序的长度
	add dx,256	;增加256个字节（程序段前缀空间）
	add dx,15
	mov cl,4
	shr dx,cl	;调整为以“节”（16个字节）为单位
	mov ax,3100h	;程序驻留，返回DOS	
	int 21h
tsrmsg	byte  'INT 04H Program Installed !',0dh,0ah,'$'
	end start
