;eg0604a.asm in Windows Graphic��ע�Ȿ������ʹ��MASM32���������
	.686
	.model flat,stdcall
	option casemap:none
	include include\windows.inc
	include include\kernel32.inc
	include include\user32.inc
	includelib lib\kernel32.lib 
	includelib lib\user32.lib

	.data
szCaption	byte '��ӭ',0
outbuffer	byte '��ã�������ԣ�',0
	.code
start:
	invoke MessageBox,NULL,addr outbuffer,addr szCaption,MB_OK
	invoke ExitProcess,NULL
	end start

