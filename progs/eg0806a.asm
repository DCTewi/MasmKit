;eg0806a.asm in DOS
	.model small
	.686
	.stack
	.data 
search	byte 'COMMAND'	;�����ҵ��ַ���

	.code
start:	
	mov edx,0 
	mov es,dx
	mov edi,edx	;�߼���ַ��ES:[EDI]=0:0����ʼ
	mov ecx,8000h	;32KB����ռ�
again1:	xor ebx,ebx	;ʹ��EBXָʾ����ַ��Ƚ�
again2:	mov al,search[ebx]
	cmp al,[edi+ebx]	;�Ƚ�һ���ַ�
	jne next
	inc ebx	;ָ����һ���ַ�
	cmp ebx,sizeof search
	jz found	;�ַ����Ƚ��꣬����ȣ�����ҵ�
	jmp again2
next:	inc edi	;�в���ͬ���ַ�
	loop again1	;���´ӵ�һ���ַ���ʼ�Ƚ�
	mov dl,'N'	;δ���ҵ�����ʾN
	jmp done
found:	mov dl,'Y'	;���ҵ�����ʾY
done:	mov ah,2
	int 21h


	mov ax,4c00h
	int 21h
	end start
