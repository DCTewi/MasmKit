; eg0420.asm in Windows Console
	include io32.inc
	.data
string	byte 'Let us have a try !',0dh,0ah,0	; 以0结尾的字符串

	.code
start:
	mov eax,offset string	; 显示处理前的字符串
	call dispmsg
	mov esi,offset string
outlp:	cmp byte ptr [esi],0	; 外循环，先判断后循环
	jz done	; 为0结束
again:	cmp byte ptr [esi],' '	; 检测是否是空格
	jnz next	; 不是空格继续循环
	mov edi,esi	; 是空格，进入剔除空格分支
inlp:	inc edi	; 该分支是循环程序
	mov al,[edi]	; 前移一个位置
	mov [edi-1],al
	cmp byte ptr [edi],0	; 内循环，先循环后判断
	jnz inlp	; 内循环结束处
	jmp again	; 再次判断是否为空格（处理连续空格情况）
next:	inc esi	; 继续对后续字符进行判断处理
	jmp outlp	; 外循环结束处
done:	mov eax,offset string	; 显示处理后的字符串
	call dispmsg

	exit 0
	end start