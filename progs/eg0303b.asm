; eg0303b.asm in Windows Console
	include io32.inc
	.data
num	byte 6,7,7,8,3,0,0,0	;要被转换的数字
tab	byte '0123456789'	;代码表
	.code
start:
	mov ecx,lengthof num
	mov esi,offset num
again:	mov eax,0	;EAX＝0
	mov al,[esi] 	;AL＝要转换的数字
	mov al,tab[eax] 	;换码
	call dispc	;显示
	add esi,1	;指向下一个数字
	loop again	;循环

	exit 0
	end start