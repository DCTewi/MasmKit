; eg0418.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	mov eax,1	;EAX=F(1)=1
	call dispuid	;��ʾ��1����
	call dispcrlf	;�س�����
	call dispuid	;��ʾ��2����
	call dispcrlf	;�س�����
	mov ebx,eax	;EBX=F(2)=1
again:	add eax,ebx	;EAX=F(N)=F(N-1)+F(N-2)
	jc done
	call dispuid	;��ʾһ����
	call dispcrlf	;�س�����
	xchg eax,ebx	;EAX=F(N-1)��EBX=F(N-2)
	jmp again
done:

	exit 0
	end start