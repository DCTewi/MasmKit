;eg0611.asm in Windows Graphic��ע�Ȿ������ʹ��MASM32���������
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
ClassName	byte "SimpleWinClass",0	;����������
AppName	byte "Win32ʾ��",0	;������
hInstance	dword ?	;Ӧ�ó���ʵ�����
CommandLine dword ?	;�����в�����ַָ��
szText	byte '��ӭ����32λWindows���磡',0
	.code
start:	;����������
	invoke GetModuleHandle, NULL
	mov    hInstance,eax	;���ʵ�����������
	invoke GetCommandLine
	mov    CommandLine,eax	;��������в�����ַָ�룬����
	invoke WinMain, hInstance,NULL,CommandLine, SW_SHOWDEFAULT
	invoke ExitProcess,eax
	;WinMain������
WinMain proc hInst:dword,hPrevInst:dword,CmdLine:dword,CmdShow:dword
	LOCAL wc:WNDCLASSEX	;���崰�����ԵĽṹ����
	LOCAL msg:MSG	;������Ϣ����
	LOCAL hwnd:DWORD	;���崰�ھ������
	;��ʼ�����������
	mov   wc.cbSize,sizeof WNDCLASSEX
	mov   wc.style,CS_HREDRAW or CS_VREDRAW
	mov   wc.lpfnWndProc, offset WndProc	;WndProc�Ǵ��ڹ���
	mov   wc.cbClsExtra,NULL
	mov   wc.cbWndExtra,NULL
	push  hInstance
	pop   wc.hInstance
	mov   wc.hbrBackground,COLOR_WINDOW+1
	mov   wc.lpszMenuName,NULL	;û��ʹ�ò˵���
	mov   wc.lpszClassName,offset ClassName
	invoke LoadIcon,NULL,IDI_APPLICATION	;���ϵͳ��׼ͼ��
	mov   wc.hIcon,eax
	mov   wc.hIconSm,eax
	invoke LoadCursor,NULL,IDC_ARROW	;���ϵͳ��׼���
	mov   wc.hCursor,eax
	invoke RegisterClassEx, addr wc	;ע�ᴰ����
	INVOKE CreateWindowEx,NULL,addr ClassName,addr AppName,\
	WS_OVERLAPPEDWINDOW,CW_USEDEFAULT, CW_USEDEFAULT,\
	CW_USEDEFAULT,CW_USEDEFAULT,NULL,NULL, hInst,NULL
	mov   hwnd,eax	;�������ڣ���������
	invoke ShowWindow, hwnd,SW_SHOWNORMAL	;��ʾ����
	invoke UpdateWindow, hwnd	;���´���
	.WHILE TRUE	;��Ϣѭ��
	invoke GetMessage,addr msg,NULL,0,0	;�����Ϣ
	.BREAK .IF (!eax)
	;.WHILE TRUE�γ�������ѭ�����˴���EAX����0������ѭ��
	invoke TranslateMessage, addr msg	;������Ϣ
	invoke DispatchMessage, addr msg	;������Ϣ
	.ENDW
	mov  eax,msg.wParam
	ret
WinMain endp
;���ڹ���
WndProc proc hWnd:dword, uMsg:dword, wParam:dword, lParam:dword
	.IF uMsg==WM_DESTROY
	invoke PostQuitMessage,NULL	;����رճ������Ϣ
	.ELSEIF uMsg==WM_LBUTTONDOWN	;����������������Ϣ
	invoke MessageBox,NULL,addr szText, addr AppName,MB_OK
	.ELSE	;���������Ϣ��ϵͳĬ�ϲ���
	invoke DefWindowProc,hWnd,uMsg,wParam,lParam		
            ret
	.ENDIF
	xor eax,eax
	ret
WndProc	endp
	end start
