; eg0601.asm in Windows Console
	.686
	.model flat,stdcall
	option casemap:none
	includelib bin\kernel32.lib	;����API�����ĵ�����ļ�
ExitProcess	proto,:DWORD	;Windows��������
GetStdHandle	proto,:DWORD
WriteConsoleA	proto,:DWORD,:DWORD,:DWORD,:DWORD,:DWORD
WriteConsole	equ <WriteConsoleA>
STD_OUTPUT_HANDLE = -11	;Windows��������
	.data
msg	byte 'Hello, Assembly!',13,10	;�ַ���
outsize	dword ?
	.code
start:
	; ���������
	invoke GetStdHandle,STD_OUTPUT_HANDLE
	; ��ʾ��Ϣ
	invoke WriteConsole,eax,addr msg,sizeof msg,addr outsize,0
	; �˳�
	invoke ExitProcess,0
	end start
