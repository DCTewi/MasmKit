; eg0309.asm in Windows Console
	include io32.inc
	.data
qvar	qword 1234567887654321h
ascii	byte '38'
bcd	byte ?

	.code
start:
	mov ecx,4 
again:	shr dword ptr qvar+4,1	;先移动高32位
	rcr dword ptr qvar,1	;后移动低32位
	loop again
	;
	mov al,ascii
	and al,0fh	;处理低4位对应的字符
	mov ah,ascii+1
	shl ah,4	;处理高4位对应的字符
	or al,ah	;组合形成压缩BCD码
	mov bcd,al

	exit 0
	end start