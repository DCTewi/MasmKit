; eg0511x.asm in Windows Console
	include io32.inc
	;宏定义
absol	macro oprd
	local next
	cmp  oprd,0
	jge next
	neg  oprd
next:
	endm	;;这个伪指令要独占一行

pdata	macro num
	if num lt 100	;;如果num < 100，则汇编如下语句
	    byte num dup (?)
	else	;;否则，汇编如下语句
	    byte 100 dup (?)
	endif
	endm

maxnum	macro dvar1:req,dvar2,dvar3
	local maxnum1,maxnum2
	mov eax,dvar1
	ifnb <dvar2>	;;当有DVAR2实参时，汇编如下语句
	    cmp eax,dvar2
	    jge maxnum1
	    mov eax,dvar2
	endif
maxnum1:
	ifnb <dvar3>	;;当有DVAR3实参时，汇编如下语句
	    cmp eax,dvar3
	    jge maxnum2
	    mov eax,dvar3
	endif
maxnum2:
	endm

	.data
	.code
start:
	absol word ptr [ebx]
	absol ebx

	pdata 12
	pdata 102

	ifdef RealMode	;;当定义有RealMode符号时，汇编如下语句
	    mov eax,@data
	    mov ds,ax
	endif

	maxnum ebx
	maxnum 3,5
	maxnum 3,6,9

	for regad, <eax,ebx,ecx,edx>
	    push  regad
	endm

	forc regad,dcba
	    pop  e&regad&x
	endm

	exit 0
	end start