#include "windows.h"
int APIENTRY WinMain (HINSTANCE hInstance, HINSTANCE hPrevInstance,
                    LPSTR lpCmdLine, int iCmdShow)
{
	char *lpCaption ="欢迎";
	char *lpText	="你好，汇编语言！";
	__asm{
	    push MB_OK			//MessageBox参数入栈
	    push lpCaption
	    push lpText
	    push NULL
	    call MessageBox	//调用MessageBox
	}
	return 0;
}

