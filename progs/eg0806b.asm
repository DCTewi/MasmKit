;another for eg0806.asm in DOS
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
	mov edx,8000h	;32KB����ռ�
	cld
again: 	mov ecx,sizeof search	;EDX=�������ַ�������
	mov esi,offset search	;ESI=�������ַ�����ַ
	mov ebx,edi	;���������ַ
	repz cmpsb	;�ظ�ɨ�裺AL��ES:[EDI]��EDI=EDI+1
    je found
	mov edi,ebx	;������ȫ��ͬ���ָ������ַ
	inc edi ;ָ����һ�������ַ��Ԫ
    dec edx
	jnz again	;���´ӵ�һ���ַ���ʼ�Ƚ�
	mov dl,'N'	;δ���ҵ�����ʾN
	jmp done
found:	mov dl,'Y'	;���ҵ�����ʾY
done:	mov ah,2
	int 21h

	mov ax,4c00h
	int 21h
	end start
