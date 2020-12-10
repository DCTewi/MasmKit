;eg0603.asm in Windows Console
	.686
	.model flat,stdcall
	option casemap:none
	includelib bin\kernel32.lib
ExitProcess	proto,:dword
GetStdHandle	proto,:dword
WriteConsoleA	proto,:dword,:dword,:dword,:dword,:dword
WriteConsole	equ <WriteConsoleA>
ReadConsoleA	proto,:dword,:dword,:dword,:dword,:dword
ReadConsole	equ <ReadConsoleA>
STD_INPUT_HANDLE = -10
STD_OUTPUT_HANDLE = -11
GetConsoleMode proto,:dword,:dword
SetConsoleMode proto,:dword,:dword

	.data
msg	byte 'Press any key to end'
outsize	dword ?
inhandle	dword ?
savemode	dword ?	;�������̨ģʽ
insize	dword ?
inbuffer	byte 255 dup(0)	;�������뻺�������255���ַ�

	.code
start:
	invoke GetStdHandle,STD_OUTPUT_HANDLE	;��ʾ�������
	invoke WriteConsole,eax,addr msg,sizeof msg,addr outsize,0
	invoke GetStdHandle,STD_INPUT_HANDLE 
	mov inhandle,eax
	invoke GetConsoleMode,inhandle,addr savemode	;��ÿ���̨ģʽ
	invoke SetConsoleMode,inhandle,0		;����Ϊ���ַ�����ģʽ
	invoke ReadConsole,inhandle,addr inbuffer,1,addr insize,0	;�����ַ�
	invoke SetConsoleMode,inhandle,savemode		;�ָ�ԭ����̨ģʽ
	invoke ExitProcess,0	;�˳�
	end start

