; eg0808.asm in DOS
	.model small
	.stack
	.data	;���ݶ�
freq	word 1989	;600HzƵ�ʶ�Ӧ�ļ���ֵ��1193180/600��1989
	.code	;�����
start:		;������ʼλ��
	mov ax,@data
	mov ds,ax
	mov ax,freq
	call speaker	;����������������
	call speakon	;������������
	mov ah,1	;�ȴ�����
	int 21h 
	call speakoff	;�ر�����������

	mov ax,4c00h	;ִ�н���
	int 21h
speakon	proc	;���������ӳ���
	push ax
	in al,61h	;��ȡ61H�˿ڵ�ԭ������Ϣ
	or al,03h	;D1D0��PB1PB0��11������λ����
	out 61h,al	;ֱ�ӿ��Ʒ���
	pop ax
	ret
speakon	endp
	;
speakoff	proc	;���������ӳ���
	push ax
	in al,61h
	and al,0fch	;D1D0��PB1PB0��00������λ���� 
	out 61h,al	;ֱ�ӿ��Ʊ���
	pop ax
	ret
speakoff	endp
speaker	proc
	push ax	;�ݴ���ڲ������ⱻ�ƻ�
	mov al,0b6h	;��ʽ�����֣���ʱ��2Ϊ��ʽ3���ȵͺ��д��16λ����ֵ
	out 43h,al	;��������ƶ˿�
	pop ax	;�ָ���ڲ���
	out 42h,al	;д���8λ����ֵ
	mov al,ah
	out 42h,al	;д���8λ����ֵ
	ret
speaker	endp

	end start	;������
