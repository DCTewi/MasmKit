; eg0301.asm in Windows Console
	include io32.inc
	.data
ten	= 10
dvar	dword 67762000h,12345678h
	.code
start:
	mov eax,dvar+4	;EAX��12345678H
	push eax	;��EAX����ѹ���ջ
	push dword ptr ten	;����������˫����ѹ���ջ
	push dvar	;������DVAR��һ������ѹ���ջ
	pop eax	;ջ�����ݵ�����EAX
	pop dvar+4	;ջ�����ݵ�����DVAR��4λ��
	mov ebx,dvar+4	;EBX��000000AH
	pop ecx	;ջ�����ݵ�����ECX
	call disprd
	exit 0
	end start