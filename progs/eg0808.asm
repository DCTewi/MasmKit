; eg0808.asm in DOS
	.model small
	.stack
	.data	;数据段
freq	word 1989	;600Hz频率对应的计数值：1193180/600≈1989
	.code	;代码段
start:		;程序起始位置
	mov ax,@data
	mov ds,ax
	mov ax,freq
	call speaker	;设置扬声器的音调
	call speakon	;打开扬声器声音
	mov ah,1	;等待按键
	int 21h 
	call speakoff	;关闭扬声器声音

	mov ax,4c00h	;执行结束
	int 21h
speakon	proc	;扬声器开子程序
	push ax
	in al,61h	;读取61H端口的原控制信息
	or al,03h	;D1D0＝PB1PB0＝11，其他位不变
	out 61h,al	;直接控制发声
	pop ax
	ret
speakon	endp
	;
speakoff	proc	;扬声器关子程序
	push ax
	in al,61h
	and al,0fch	;D1D0＝PB1PB0＝00，其他位不变 
	out 61h,al	;直接控制闭音
	pop ax
	ret
speakoff	endp
speaker	proc
	push ax	;暂存入口参数以免被破坏
	mov al,0b6h	;方式控制字：定时器2为方式3，先低后高写入16位计数值
	out 43h,al	;输出到控制端口
	pop ax	;恢复入口参数
	out 42h,al	;写入低8位计数值
	mov al,ah
	out 42h,al	;写入高8位计数值
	ret
speaker	endp

	end start	;汇编结束
