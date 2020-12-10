;eg0604a.asm in Windows Graphic，注意本例程序使用MASM32开发软件包
	.686
	.model flat,stdcall
	option casemap:none
	include include\windows.inc
	include include\kernel32.inc
	include include\user32.inc
	includelib lib\kernel32.lib 
	includelib lib\user32.lib

	.data
szCaption	byte '欢迎',0
outbuffer	byte '你好，汇编语言！',0
	.code
start:
	invoke MessageBox,NULL,addr outbuffer,addr szCaption,MB_OK
	invoke ExitProcess,NULL
	end start

