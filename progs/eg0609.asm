; eg0609.asm in Windows Console
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
	.while -1   ;������ѭ��
	  add eax,ebx	;EAX=F(N)=F(N-1)+F(N-2)
	  .break .if CARRY?	;������ֽ�λ;���˳�ѭ��
	  call dispuid	;��ʾһ����
	  call dispcrlf	;�س�����
	  xchg eax,ebx	;EAX=F(N-1)��EBX=F(N-2)
  	.endw 

	exit 0
	end start
