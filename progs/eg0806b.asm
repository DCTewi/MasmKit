;another for eg0806.asm in DOS
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
	mov edx,8000h	;32KB主存空间
	cld
again: 	mov ecx,sizeof search	;EDX=待查找字符串长度
	mov esi,offset search	;ESI=待查找字符串地址
	mov ebx,edi	;保存主存地址
	repz cmpsb	;重复扫描：AL－ES:[EDI]，EDI=EDI+1
    je found
	mov edi,ebx	;不是完全相同，恢复主存地址
	inc edi ;指向下一个主存地址单元
    dec edx
	jnz again	;重新从第一个字符开始比较
	mov dl,'N'	;未查找到，显示N
	jmp done
found:	mov dl,'Y'	;查找到，显示Y
done:	mov ah,2
	int 21h

	mov ax,4c00h
	int 21h
	end start
