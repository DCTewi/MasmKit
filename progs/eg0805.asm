;eg0805.asm in DOS
	.model small
	.686
	.stack
	.data 
string1	byte 'equal or not'
string2	byte 'eQual or not'
	.code
start:	mov ax,@data
	mov ds,ax	;设置数据段DS
	mov es,ax	;设置附加段ES＝DS
	mov ecx,sizeof string1
	mov esi,offset string1
	mov edi,offset string2
	cld
	repz cmpsb	;重复比较，不同或比较完结束比较
	jne found	;发现不同字符，转移到FOUND
	mov dl,'Y'	;字符串相同，显示Y
	jmp done
found:	mov dl,'N'	;字符串不同，显示N
done:	mov ah,2
	int 21h
	mov ax,4c00h
	int 21h
	end start
