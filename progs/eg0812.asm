; eg0812.asm in DOS
	.model small
	.code
new04h	proc	;�жϷ������
	sti
	push ax	;����Ĵ���
	push bx
	push si
	push ds
	mov ax,cs	;�����ڴ�����У���DS��CS
	mov ds,ax
	mov si,offset intmsg
dps1:	mov al,[si]
	cmp al,0
	jz dps2
	mov bx,0	;����ROM-BIOS������ʾAL�е��ַ�
	mov ah,0eh
	int 10h
	inc si
	jmp dps1
dps2:	pop ds	;�ָ��Ĵ���
	pop si
	pop bx
	pop ax
	iret	;�жϷ���
intmsg  byte 0dh,0ah,'Overflow !',0	; �������ʾ����Ϣ
new04h	endp	;�жϷ���������
	;������ʼ
start:  	mov ax,cs
	mov ds,ax	
	mov bx,0	;����04H�жϷ�������ַ
	mov es,bx	;���ø��Ӷ�ES��0��ָ�������ַ�Ͷ�
	mov ax,offset new04h 
	mov es:[4*4],ax	;����ƫ�Ƶ�ַ
	mov ax,seg new04h
	mov es:[4*4+2],ax	;���öλ���ַ

	mov ah,9	;��ʾ��װ��Ϣ
	mov dx,offset tsrmsg
	int 21h
	mov dx,offset start	;����פ���ڴ����ĳ���
	add dx,256	;����256���ֽڣ������ǰ׺�ռ䣩
	add dx,15
	mov cl,4
	shr dx,cl	;����Ϊ�ԡ��ڡ���16���ֽڣ�Ϊ��λ
	mov ax,3100h	;����פ��������DOS	
	int 21h
tsrmsg	byte  'INT 04H Program Installed !',0dh,0ah,'$'
	end start
