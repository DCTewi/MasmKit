; eg0601.asm in Windows Console
	.686
	.model flat,stdcall
	option casemap:none
	includelib bin\kernel32.lib	;包含API函数的导入库文件
ExitProcess	proto,:DWORD	;Windows函数声明
GetStdHandle	proto,:DWORD
WriteConsoleA	proto,:DWORD,:DWORD,:DWORD,:DWORD,:DWORD
WriteConsole	equ <WriteConsoleA>
STD_OUTPUT_HANDLE = -11	;Windows常量定义
	.data
msg	byte 'Hello, Assembly!',13,10	;字符串
outsize	dword ?
	.code
start:
	; 获得输出句柄
	invoke GetStdHandle,STD_OUTPUT_HANDLE
	; 显示信息
	invoke WriteConsole,eax,addr msg,sizeof msg,addr outsize,0
	; 退出
	invoke ExitProcess,0
	end start
