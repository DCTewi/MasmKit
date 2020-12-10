; eg0412.asm in Windows Console
	include io32.inc
	.data
dvar1	dword 1234567890	;假设两个数据
dvar2	dword -999999999
dvar3	dword ?
okmsg	byte 'Correct!',0	;正确信息
errmsg	byte 'ERROR ! Overflow!',0	;错误信息

	.code
start:
	mov eax,dvar1 
	sub eax,dvar2	;求差
	jo error	;有溢出，转移
	mov dvar3,eax	;无溢出，保存差值
	mov eax,offset okmsg	;显示正确
	jmp disp
error:	mov eax,offset errmsg	;显示错误
disp:	call dispmsg

	exit 0
	end start