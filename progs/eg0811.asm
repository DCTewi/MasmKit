; eg0811.asm in DOS
	.model small
	.stack
	.data 
intoff	word ?	;用于保存原中断服务程序的偏移地址
intseg	word ? 	;用于保存原中断服务程序的段基地址
intmsg	byte 'A Instruction Interrupt !',0dh,0ah,0	;字符串（以0结尾）
	.code
start:	mov ax,@data
	mov ds,ax
	;获取系统的原80H中断服务程序地址
	mov bx,0
	mov es,bx	;设置附加段ES＝0，指向物理地址低端
	mov bx,80h	;BL＝AL＝N
    shl bx,1
	shl bx,1	;BX＝N×4
	mov ax,es:[bx]	;获取中断服务程序的偏移地址
	mov intoff,ax
	mov ax,es:[bx+2]	;获取中断服务程序的段基地址
	mov intseg,ax
	;设置本程序的80H中断服务程序地址
	mov ax,offset new80h 
	mov es:[bx],ax	;设置偏移地址
	mov ax,seg new80h
	mov es:[bx+2],ax	;设置段基地址
	;中断调用
	mov dx,offset intmsg	;设置入口参数DS和DX
	int 80h	;调用80H中断服务程序，显示字符串
	;恢复系统的原80H中断服务程序地址
	mov ax,intoff
	mov es:[bx],ax	;恢复偏移地址
	mov ax,intseg 
	mov es:[bx+2],ax	;恢复段基地址
	mov ax,4c00h
	int 21h
	;80H内部中断服务程序：显示字符串（以0结尾）；DS∶DX＝缓冲区首地址
new80h	proc	;过程定义
	sti	;开中断
	push ax	;保护寄存器
	push bx
	push si
	mov si,dx
new1:	mov al,[si]	;获取欲显示字符
	cmp al,0	;为“0”结束
	jz new2
	mov bx,0	;采用ROM-BIOS调用显示一个字符
	mov ah,0eh
	int 10h
	inc si	;显示下一个字符
	jmp new1
new2:	pop si	;恢复寄存器
	pop bx
	pop ax
	iret	;中断返回
new80h	endp	;中断服务程序结束
	end start 
