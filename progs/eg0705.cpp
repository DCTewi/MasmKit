#include "windows.h"
int APIENTRY WinMain (HINSTANCE hInstance, HINSTANCE hPrevInstance,
                    LPSTR lpCmdLine, int iCmdShow)
{
	char *lpCaption ="��ӭ";
	char *lpText	="��ã�������ԣ�";
	__asm{
	    push MB_OK			//MessageBox������ջ
	    push lpCaption
	    push lpText
	    push NULL
	    call MessageBox	//����MessageBox
	}
	return 0;
}

