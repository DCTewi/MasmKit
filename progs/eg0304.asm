; eg0304.asm in Windows Console
	include io32.inc
	.data
qvar1	qword 6778300082347856h	;64位数据1
qvar2	qword 6776200012348998h	;64位数据2

	.code
start:
	mov eax,dword ptr qvar1	;取低32位
	add eax,dword ptr qvar2	;加低32位，设置CF
	mov edx,dword ptr qvar1+4	;取高32位
	adc edx,dword ptr qvar2+4	;加高32位，同时也加上CF
	call disprd

	exit 0
	end start