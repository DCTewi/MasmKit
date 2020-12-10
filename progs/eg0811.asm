; eg0811.asm in DOS
	.model small
	.stack
	.data 
intoff	word ?	;���ڱ���ԭ�жϷ�������ƫ�Ƶ�ַ
intseg	word ? 	;���ڱ���ԭ�жϷ������Ķλ���ַ
intmsg	byte 'A Instruction Interrupt !',0dh,0ah,0	;�ַ�������0��β��
	.code
start:	mov ax,@data
	mov ds,ax
	;��ȡϵͳ��ԭ80H�жϷ�������ַ
	mov bx,0
	mov es,bx	;���ø��Ӷ�ES��0��ָ�������ַ�Ͷ�
	mov bx,80h	;BL��AL��N
    shl bx,1
	shl bx,1	;BX��N��4
	mov ax,es:[bx]	;��ȡ�жϷ�������ƫ�Ƶ�ַ
	mov intoff,ax
	mov ax,es:[bx+2]	;��ȡ�жϷ������Ķλ���ַ
	mov intseg,ax
	;���ñ������80H�жϷ�������ַ
	mov ax,offset new80h 
	mov es:[bx],ax	;����ƫ�Ƶ�ַ
	mov ax,seg new80h
	mov es:[bx+2],ax	;���öλ���ַ
	;�жϵ���
	mov dx,offset intmsg	;������ڲ���DS��DX
	int 80h	;����80H�жϷ��������ʾ�ַ���
	;�ָ�ϵͳ��ԭ80H�жϷ�������ַ
	mov ax,intoff
	mov es:[bx],ax	;�ָ�ƫ�Ƶ�ַ
	mov ax,intseg 
	mov es:[bx+2],ax	;�ָ��λ���ַ
	mov ax,4c00h
	int 21h
	;80H�ڲ��жϷ��������ʾ�ַ�������0��β����DS��DX���������׵�ַ
new80h	proc	;���̶���
	sti	;���ж�
	push ax	;�����Ĵ���
	push bx
	push si
	mov si,dx
new1:	mov al,[si]	;��ȡ����ʾ�ַ�
	cmp al,0	;Ϊ��0������
	jz new2
	mov bx,0	;����ROM-BIOS������ʾһ���ַ�
	mov ah,0eh
	int 10h
	inc si	;��ʾ��һ���ַ�
	jmp new1
new2:	pop si	;�ָ��Ĵ���
	pop bx
	pop ax
	iret	;�жϷ���
new80h	endp	;�жϷ���������
	end start 
