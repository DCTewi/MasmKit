; eg0510.asm in Windows Console
	include io32.inc
	;宏定义
dreg32	macro reg32
	local dreg1,dreg2
	mov eax,reg32	;;显示reg32寄存器
	mov ecx,8 
	xor ebx,ebx
dreg1:	rol eax,4
	mov edx,eax
	and dl,0fh
	add dl,30h	;;转化为相应的ASCII码值
	cmp dl,39h	;;区别0～9和A～F数码
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
	mov eax,12345678h	;假设一些数据
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
	dreg32 eax	;显示EAX
	pop ebx
	dreg32 ebx	;显示EBX
	pop ecx
	dreg32 ecx	;显示ECX
	pop edx
	dreg32 edx	;显示EDX
	dreg32 esi	;显示ESI
	dreg32 edi	;显示EDI
	dreg32 ebp	;显示EBP
	add esp,36	;获得进入该子程序前的ESP
	dreg32 esp	;显示ESP
	sub esp,36	;恢复ESP
	mov eax,offset rdeax
	call dispmsg
	popad
	ret 
dprd	endp

	end start