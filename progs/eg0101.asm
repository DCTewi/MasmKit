; eg0101.asm in Windows Console
	include io32.inc
	.data
msg    byte 'Hello, Assembly!',13,10,0	;×Ö·û´®
	.code
start:
	mov eax,offset msg		;ÏÔÊ¾
	call dispmsg

	exit 0
	end start