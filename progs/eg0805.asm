;eg0805.asm in DOS
	.model small
	.686
	.stack
	.data 
string1	byte 'equal or not'
string2	byte 'eQual or not'
	.code
start:	mov ax,@data
	mov ds,ax	;�������ݶ�DS
	mov es,ax	;���ø��Ӷ�ES��DS
	mov ecx,sizeof string1
	mov esi,offset string1
	mov edi,offset string2
	cld
	repz cmpsb	;�ظ��Ƚϣ���ͬ��Ƚ�������Ƚ�
	jne found	;���ֲ�ͬ�ַ���ת�Ƶ�FOUND
	mov dl,'Y'	;�ַ�����ͬ����ʾY
	jmp done
found:	mov dl,'N'	;�ַ�����ͬ����ʾN
done:	mov ah,2
	int 21h
	mov ax,4c00h
	int 21h
	end start
