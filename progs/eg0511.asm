; eg0511.asm in Windows Console
	include io32.inc
	;�궨��

	.data
char = 20h	;�����һ������ʾ�ַ����ո���ASCIIֵ��20H
space	byte char
	repeat 94-1	;;��׼ASCII����94������ʾ�ַ�
	    char = char +1
	    byte char
	endm
	byte 0

	.code
start:
	mov eax,offset space
	call dispmsg
	exit 0
	end start