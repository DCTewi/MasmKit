;eg0806a.asm in DOS
	.model small
	.686
	.stack
	.data 
search	byte 'COMMAND'	;待查找的字符串

	.code
start:	
	mov edx,0 
	mov es,dx
	mov edi,edx	;逻辑地址（ES:[EDI]=0:0）起始
	mov ecx,8000h	;32KB主存空间
again1:	xor ebx,ebx	;使用EBX指示逐个字符比较
again2:	mov al,search[ebx]
	cmp al,[edi+ebx]	;比较一个字符
	jne next
	inc ebx	;指向下一个字符
	cmp ebx,sizeof search
	jz found	;字符串比较完，仍相等，则查找到
	jmp again2
next:	inc edi	;有不相同的字符
	loop again1	;重新从第一个字符开始比较
	mov dl,'N'	;未查找到，显示N
	jmp done
found:	mov dl,'Y'	;查找到，显示Y
done:	mov ah,2
	int 21h


	mov ax,4c00h
	int 21h
	end start
