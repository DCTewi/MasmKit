; eg0406.asm in Windows Console
	include io32.inc
	.data
no_msg	byte 'Not Ready!',0
yes_msg	byte 'Ready to Go!',0

	.code
start:
	mov eax,56h	;假设一个数据
	test eax,02h	;测试D1位（使用D1＝1，其他位为0的数据）
	jz nom	;D1＝0条件成立，转移
	mov eax,offset yes_msg	;D1＝1，显示准备好
	jmp done	;跳转过另一个分支体！
nom:	mov eax,offset no_msg	;显示没有准备好
done:	call dispmsg

	exit 0
	end start