; eg0609.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	mov eax,1	;EAX=F(1)=1
	call dispuid	;显示第1个数
	call dispcrlf	;回车换行
	call dispuid	;显示第2个数
	call dispcrlf	;回车换行
	mov ebx,eax	;EBX=F(2)=1
	.while -1   ;无条件循环
	  add eax,ebx	;EAX=F(N)=F(N-1)+F(N-2)
	  .break .if CARRY?	;如果出现进位;则退出循环
	  call dispuid	;显示一个数
	  call dispcrlf	;回车换行
	  xchg eax,ebx	;EAX=F(N-1)，EBX=F(N-2)
  	.endw 

	exit 0
	end start
