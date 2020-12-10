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
savemode	dword ?	;保存控制台模式
insize	dword ?
inbuffer	byte 255 dup(0)	;设置输入缓冲区最大255个字符

	.code
start:
	invoke GetStdHandle,STD_OUTPUT_HANDLE	;提示按任意键
	invoke WriteConsole,eax,addr msg,sizeof msg,addr outsize,0
	invoke GetStdHandle,STD_INPUT_HANDLE 
	mov inhandle,eax
	invoke GetConsoleMode,inhandle,addr savemode	;获得控制台模式
	invoke SetConsoleMode,inhandle,0		;设置为单字符输入模式
	invoke ReadConsole,inhandle,addr inbuffer,1,addr insize,0	;输入字符
	invoke SetConsoleMode,inhandle,savemode		;恢复原控制台模式
	invoke ExitProcess,0	;退出
	end start

