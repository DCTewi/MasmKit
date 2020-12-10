;eg0602.asm in Windows Console
	.686
	.model flat,stdcall
	option casemap:none
	includelib bin\kernel32.lib
ExitProcess	proto,:dword
exit	macro dwexitcode
	invoke ExitProcess,dwexitcode
	endm
GetStdHandle	proto,:dword
WriteConsoleA	proto,:dword,:dword,:dword,:dword,:dword
WriteConsole	equ <WriteConsoleA>
ReadConsoleA	proto,:dword,:dword,:dword,:dword,:dword
ReadConsole	equ <ReadConsoleA>
STD_INPUT_HANDLE = -10
STD_OUTPUT_HANDLE = -11

	.data
msg1	byte 'Please enter your name: ',0
msg2	byte 'Welcome ',0
nbuf	byte 80 dup(0)
msg3	byte ' to Win32 Console!',0

	.code
start:
	mov eax,offset msg1	;��ʾ����
	call dispmsg
	mov eax,offset nbuf	;������Ϣ
	call readmsg
	mov eax,offset msg2
	call dispmsg
	mov eax,offset nbuf	;��ʾ������Ϣ
	call dispmsg
	mov eax,offset msg3
	call dispmsg
	exit 0

	.data	;�ӳ���DISPMSGʹ�õı���
_outsize	dword ?
_outhandle	dword ?
	.code
dispmsg	proc	;�ַ�����ʾ�ӳ�����ڲ�����EAX���ַ�����ַ
	push eax
	push ebx
	push ecx
	push edx
	push eax	;������ڲ��������ַ�����ַ
	invoke GetStdHandle,STD_OUTPUT_HANDLE
	mov _outhandle,eax	;���ʵ�����棬�Ա����ʹ��
	pop ebx	;�Ӷ�ջ�����ַ�����ַ��EBX
	xor ecx,ecx	;�����ַ�������
dispm1:	mov al,[ebx+ecx]
	test al,al
	jz dispm2
	inc ecx
	jmp dispm1
dispm2:	invoke WriteConsole,_outhandle,ebx,ecx,addr _outsize,0
	pop edx
	pop ecx
	pop ebx
	pop eax
	ret
dispmsg	endp

	.data	;�ӳ���READMSGʹ�õı���
_insize	dword ?
_inbuffer	byte 255 dup(0)	;�������뻺�������255���ַ�
	.code
readmsg	proc	;�ַ��������ӳ�����ڲ�����EAX����������ַ
	push ebx
	push ecx
	push edx
	push eax	;��������Ļ�������ַ����
	invoke GetStdHandle,STD_INPUT_HANDLE
	invoke ReadConsole,eax,addr _inbuffer,255,addr _insize, 0
	sub _insize,2	;ʵ��������ַ��������س��ͻ����ַ�
	xor ecx,ecx
	pop ebx	;��û�������ַ
readm1:	mov al,_inbuffer[ecx]
	mov [ebx+ecx],al	;��������ַ������Ƶ��û�������
	inc ecx
	cmp ecx,_insize
	jb readm1
	mov byte ptr [ebx+ecx],0	;��������β�ַ�0
	mov eax,ecx	;����ʵ�ʵ��ַ�������������β��־0
	pop edx
	pop ecx
	pop ebx
	ret
readmsg	endp
	end start
