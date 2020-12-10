; eg0406a.asm in Windows Console
	include io32.inc
	.data
no_msg	byte 'Not Ready!',0
yes_msg	byte 'Ready to Go!',0

	.code
start:
	mov eax,58h	;假设一个数据
	test eax,02h	;测试D1位（使用D1＝1，其他位为0的数据）
	jnz yesm	;D1＝1条件成立，转移
	mov eax,offset no_msg	;D1＝0，显示没有准备好
	jmp done	;跳转过另一个分支体！
yesm:	mov eax,offset yes_msg	;显示准备好
done:	call dispmsg

	exit 0
	end start