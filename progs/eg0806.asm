;eg0806.asm in DOS
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
	cld
again1: 	mov edx,sizeof search	;EDX=待查找字符串长度
	mov esi,offset search	;ESI=待查找字符串地址
	lodsb	;取出第一个待比较的字符AL=DS;[ESI]，ESI=ESI+1
	repnz scasb	;重复扫描：AL－ES:[EDI]，EDI=EDI+1
	jecxz next	;ECX=0，扫描到最后字符，转移
	mov ebx,edi	;不是最后，保存第一个字符相同时的地址
again2:	dec edx
	jz found	;比较完所有字符，查找到
	lodsb	;比较下一个字符
	scasb
	jz again2	;还相同，继续比较
	mov edi,ebx	;不是完全相同，恢复第一个字符相同时的地址
	jmp again1	;重新从第一个字符开始比较
next: 	jnz nofound	;最后一个字符不相同，没有查找到
	dec edx
	jz found	;待查找内容只有一个字符，查找到
nofound:	mov dl,'N'	;未查找到，显示N
	jmp done
found:	mov dl,'Y'	;查找到，显示Y
done:	mov ah,2
	int 21h

	mov ax,4c00h
	int 21h
	end start
