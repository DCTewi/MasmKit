;eg0806.asm in DOS
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
	cld
again1: 	mov edx,sizeof search	;EDX=�������ַ�������
	mov esi,offset search	;ESI=�������ַ�����ַ
	lodsb	;ȡ����һ�����Ƚϵ��ַ�AL=DS;[ESI]��ESI=ESI+1
	repnz scasb	;�ظ�ɨ�裺AL��ES:[EDI]��EDI=EDI+1
	jecxz next	;ECX=0��ɨ�赽����ַ���ת��
	mov ebx,edi	;������󣬱����һ���ַ���ͬʱ�ĵ�ַ
again2:	dec edx
	jz found	;�Ƚ��������ַ������ҵ�
	lodsb	;�Ƚ���һ���ַ�
	scasb
	jz again2	;����ͬ�������Ƚ�
	mov edi,ebx	;������ȫ��ͬ���ָ���һ���ַ���ͬʱ�ĵ�ַ
	jmp again1	;���´ӵ�һ���ַ���ʼ�Ƚ�
next: 	jnz nofound	;���һ���ַ�����ͬ��û�в��ҵ�
	dec edx
	jz found	;����������ֻ��һ���ַ������ҵ�
nofound:	mov dl,'N'	;δ���ҵ�����ʾN
	jmp done
found:	mov dl,'Y'	;���ҵ�����ʾY
done:	mov ah,2
	int 21h

	mov ax,4c00h
	int 21h
	end start
