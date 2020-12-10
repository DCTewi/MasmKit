; eg0408.asm in Windows Console
	include io32.inc
	.data
in_msg1	byte 'Enter a number: ',0
in_msg2	byte 'Enter another number: ',0
out_msg1	byte 'Two numbers are equal: ',0
out_msg2	byte 'The less number is: ',0
out_msg3	byte 13,10,'The greater number is: ',0

	.code
start:
	mov eax,offset in_msg1	;提示输入第一个数据
	call dispmsg
	call readsid	;输入第一个数据
	mov ebx,eax	;保存到EBX
	mov eax,offset in_msg2	;提示输入第二个数据
	call dispmsg
	call readsid	;输入第二个数据
	mov ecx,eax	;保存到ECX
	cmp ebx,ecx	;二个数据进行比较
	jne nequal	;两数不相等，转移
	mov eax,offset out_msg1	;两数相等
	call dispmsg
	mov eax,ebx
	call dispsid	;显示相等的数据
	jmp done	;转移到结束
nequal:	jl first	;EBX较小，不需要交换，转移
	xchg ebx,ecx	;EBX保存较小数，ECX保存较大数
first:	mov eax,offset out_msg2	;显示较小数
	call dispmsg
	mov eax,ebx	;较小数在EBX中
	call dispsid
	mov eax,offset out_msg3	;显示较大数
	call dispmsg
	mov eax,ecx	;较大数在ECX中
	call dispsid
done:

	exit 0
	end start