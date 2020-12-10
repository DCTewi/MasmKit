; eg0413a.asm in Windows Console
	include io32.inc
	.data
msg1	byte 'Chapter 1: Fundamentals',0dh,0ah,0
msg2	byte 'Chapter 2: Data Representation',0dh,0ah,0
msg3	byte 'Chapter 3: Basic Instructions',0dh,0ah,0
msg4	byte 'Chapter 4: Program Structure',0dh,0ah,0
msg5	byte 'Chapter 5: Procedure Progamming',0dh,0ah,0
msg6	byte 'Chapter 6: Windows Programming',0dh,0ah,0
msg7	byte 'Chapter 7: Mixed Programming',0dh,0ah,0
msg8	byte 'Chapter 8: I/O Programming',0dh,0ah,0
msg9	byte 'Chapter 9: FP/SIMD/64-bit Instructions',0dh,0ah,0
msg10	byte 'Chapter 10: Other Topics',0dh,0ah,0	;10个信息
msg     byte 'Input number(1~10):',0dh,0ah,0	;提示输入字符串
table	dword msg1,msg2,msg3,msg4,msg5,msg6,msg7,msg8,msg9,msg10	;地址表

	.code
start:
again:	mov eax,offset msg
	call dispmsg	;提示输入
	call readuid	;接收输入：EAX=数字
	cmp eax,1	;判断范围
	jb again
	cmp eax,10
	ja again	;不在范围内，重新输入
	dec eax	;EAX=EAX-1
	shl eax,2	;EAX=EAX×4
	mov eax,table[eax]	;获得信息字符串地址
	call dispmsg	;显示

	exit 0
	end start