;eg0807.asm in DOS
	include io16.inc
	.code
start:
	mov al,9	;AL＝9（准备从9号单元获取年代数据）
	out 70h,al	;从70H的I/O地址输出，选择CMOS RAM的9号单元
	in al,71h	;从71H的I/O地址输入，获取9号单元的内容，保存在AL
	call disphb	;显示AL内容，即年代
	mov al,'-'	;显示分隔符“－”
	call dispc

	mov al,8	;AL＝8（从8号单元获取月份数据）
	out 70h,al
	in al,71h
	call disphb	;显示月份
	mov al,'-'	;显示分隔符“－”
	call dispc

	mov al,7	;AL＝7（从7号单元获取日期数据）
	out 70h,al
	in al,71h
	call disphb	;显示日期
	exit 0
	end start
