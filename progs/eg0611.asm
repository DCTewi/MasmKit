;eg0611.asm in Windows Graphic，注意本例程序使用MASM32开发软件包
	.686
	.model flat,stdcall
	option casemap:none
	include include\windows.inc
	include include\kernel32.inc
	include include\user32.inc
	includelib lib\kernel32.lib 
	includelib lib\user32.lib
WinMain	proto :dword,:dword,:dword,:dword
	.data
ClassName	byte "SimpleWinClass",0	;窗口类名称
AppName	byte "Win32示例",0	;程序名
hInstance	dword ?	;应用程序实例句柄
CommandLine dword ?	;命令行参数地址指针
szText	byte '欢迎进入32位Windows世界！',0
	.code
start:	;调用主过程
	invoke GetModuleHandle, NULL
	mov    hInstance,eax	;获得实例句柄，保存
	invoke GetCommandLine
	mov    CommandLine,eax	;获得命令行参数地址指针，保存
	invoke WinMain, hInstance,NULL,CommandLine, SW_SHOWDEFAULT
	invoke ExitProcess,eax
	;WinMain主过程
WinMain proc hInst:dword,hPrevInst:dword,CmdLine:dword,CmdShow:dword
	LOCAL wc:WNDCLASSEX	;定义窗口属性的结构变量
	LOCAL msg:MSG	;定义消息变量
	LOCAL hwnd:DWORD	;定义窗口句柄变量
	;初始化窗口类变量
	mov   wc.cbSize,sizeof WNDCLASSEX
	mov   wc.style,CS_HREDRAW or CS_VREDRAW
	mov   wc.lpfnWndProc, offset WndProc	;WndProc是窗口过程
	mov   wc.cbClsExtra,NULL
	mov   wc.cbWndExtra,NULL
	push  hInstance
	pop   wc.hInstance
	mov   wc.hbrBackground,COLOR_WINDOW+1
	mov   wc.lpszMenuName,NULL	;没有使用菜单栏
	mov   wc.lpszClassName,offset ClassName
	invoke LoadIcon,NULL,IDI_APPLICATION	;获得系统标准图标
	mov   wc.hIcon,eax
	mov   wc.hIconSm,eax
	invoke LoadCursor,NULL,IDC_ARROW	;获得系统标准光标
	mov   wc.hCursor,eax
	invoke RegisterClassEx, addr wc	;注册窗口类
	INVOKE CreateWindowEx,NULL,addr ClassName,addr AppName,\
	WS_OVERLAPPEDWINDOW,CW_USEDEFAULT, CW_USEDEFAULT,\
	CW_USEDEFAULT,CW_USEDEFAULT,NULL,NULL, hInst,NULL
	mov   hwnd,eax	;创建窗口，保存其句柄
	invoke ShowWindow, hwnd,SW_SHOWNORMAL	;显示窗口
	invoke UpdateWindow, hwnd	;更新窗口
	.WHILE TRUE	;消息循环
	invoke GetMessage,addr msg,NULL,0,0	;获得消息
	.BREAK .IF (!eax)
	;.WHILE TRUE形成无条件循环，此处当EAX等于0则跳出循环
	invoke TranslateMessage, addr msg	;翻译消息
	invoke DispatchMessage, addr msg	;分派消息
	.ENDW
	mov  eax,msg.wParam
	ret
WinMain endp
;窗口过程
WndProc proc hWnd:dword, uMsg:dword, wParam:dword, lParam:dword
	.IF uMsg==WM_DESTROY
	invoke PostQuitMessage,NULL	;处理关闭程序的消息
	.ELSEIF uMsg==WM_LBUTTONDOWN	;处理单击鼠标左键的消息
	invoke MessageBox,NULL,addr szText, addr AppName,MB_OK
	.ELSE	;不处理的消息由系统默认操作
	invoke DefWindowProc,hWnd,uMsg,wParam,lParam		
            ret
	.ENDIF
	xor eax,eax
	ret
WndProc	endp
	end start
