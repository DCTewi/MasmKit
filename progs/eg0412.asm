; eg0412.asm in Windows Console
	include io32.inc
	.data
dvar1	dword 1234567890	;������������
dvar2	dword -999999999
dvar3	dword ?
okmsg	byte 'Correct!',0	;��ȷ��Ϣ
errmsg	byte 'ERROR ! Overflow!',0	;������Ϣ

	.code
start:
	mov eax,dvar1 
	sub eax,dvar2	;���
	jo error	;�������ת��
	mov dvar3,eax	;������������ֵ
	mov eax,offset okmsg	;��ʾ��ȷ
	jmp disp
error:	mov eax,offset errmsg	;��ʾ����
disp:	call dispmsg

	exit 0
	end start