; eg0511x.asm in Windows Console
	include io32.inc
	;�궨��
absol	macro oprd
	local next
	cmp  oprd,0
	jge next
	neg  oprd
next:
	endm	;;���αָ��Ҫ��ռһ��

pdata	macro num
	if num lt 100	;;���num < 100�������������
	    byte num dup (?)
	else	;;���򣬻���������
	    byte 100 dup (?)
	endif
	endm

maxnum	macro dvar1:req,dvar2,dvar3
	local maxnum1,maxnum2
	mov eax,dvar1
	ifnb <dvar2>	;;����DVAR2ʵ��ʱ������������
	    cmp eax,dvar2
	    jge maxnum1
	    mov eax,dvar2
	endif
maxnum1:
	ifnb <dvar3>	;;����DVAR3ʵ��ʱ������������
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

	ifdef RealMode	;;��������RealMode����ʱ������������
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