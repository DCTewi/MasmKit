; eg0302.asm in Windows Console
	include io32.inc
	.data
dvar	dword 41424344h
	.code
start:
	mov eax,dvar	;ֱ��Ѱַ��ñ���ֵ��EAX��41424344H
	lea esi,dvar	;ִ��ʱ��ñ�����ַ��ESIָ��DVAR
	mov ebx,[esi]	;ͨ����ַ��ñ���ֵ��EBX��41424344H
	mov edi,offset dvar	;���ʱ��ñ�����ַ��EDIָ��DVAR
	mov ecx,[edi] 	;ͨ����ַ��ñ���ֵ��ECX��41424344H
	lea edx,[esi+edi*4+100h] 	;EDX��ESI��EDI��4��100H
	call disprd
	exit 0
	end start