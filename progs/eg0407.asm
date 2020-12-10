; eg0407.asm in Windows Console
	include io32.inc
	.data

	.code
start:
	call readc	;键盘输入，返回值在AL寄存器
	call dispcrlf	;回车换行（用于分隔）
	call dispbb	;以二进制形式显示数据
	call dispcrlf	;回车换行（用于分隔）
	and al,7fh	;最高位置“0”、其他位不变，同时标志PF反映“1”的个数
	jnp next	;个数为奇数，不需处理，转移
	or al,80h	;个数为偶数，最高位置“1”、其他位不变 
next:	call dispbb	;显示含校验位的数据

	exit 0
	end start