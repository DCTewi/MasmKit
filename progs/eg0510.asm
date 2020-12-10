; eg0510.asm in Windows Console
	include io32.inc
	;�궨��
dreg32	macro reg32
	local dreg1,dreg2
	mov eax,reg32	;;��ʾreg32�Ĵ���
	mov ecx,8 
	xor ebx,ebx
dreg1:	rol eax,4
	mov edx,eax
	and dl,0fh
	add dl,30h	;;ת��Ϊ��Ӧ��ASCII��ֵ
	cmp dl,39h	;;����0��9��A��F����
	jbe dreg2
	add dl,7
dreg2:	mov rd&reg32&[ebx+4],dl
	inc ebx
	cmp ebx,ecx
	jb dreg1
	endm
    .data
rdeax	byte 'EAX=00000000, '
rdebx	byte 'EBX=00000000, '
rdecx	byte 'ECX=00000000, '
rdedx	byte 'EDX=00000000',13,10
rdesi	byte 'ESI=00000000, '
rdedi	byte 'EDI=00000000, '
rdebp	byte 'EBP=00000000, '
rdesp	byte 'ESP=00000000',13,10,0
	.code
start:
	mov eax,12345678h	;����һЩ����
	mov ebx,0abcdef00h
    mov ecx,eax
    mov edx,ebx
    mov esi,11111111h
    mov edi,22222222h
    mov ebp,esp
	call dprd
	exit 0
dprd	proc
	pushad
	push edx
	push ecx
	push ebx
	dreg32 eax	;��ʾEAX
	pop ebx
	dreg32 ebx	;��ʾEBX
	pop ecx
	dreg32 ecx	;��ʾECX
	pop edx
	dreg32 edx	;��ʾEDX
	dreg32 esi	;��ʾESI
	dreg32 edi	;��ʾEDI
	dreg32 ebp	;��ʾEBP
	add esp,36	;��ý�����ӳ���ǰ��ESP
	dreg32 esp	;��ʾESP
	sub esp,36	;�ָ�ESP
	mov eax,offset rdeax
	call dispmsg
	popad
	ret 
dprd	endp

	end start