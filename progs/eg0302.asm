; eg0302.asm in Windows Console
	include io32.inc
	.data
dvar	dword 41424344h
	.code
start:
	mov eax,dvar	;直接寻址获得变量值：EAX＝41424344H
	lea esi,dvar	;执行时获得变量地址：ESI指向DVAR
	mov ebx,[esi]	;通过地址获得变量值：EBX＝41424344H
	mov edi,offset dvar	;汇编时获得变量地址：EDI指向DVAR
	mov ecx,[edi] 	;通过地址获得变量值：ECX＝41424344H
	lea edx,[esi+edi*4+100h] 	;EDX＝ESI＋EDI×4＋100H
	call disprd
	exit 0
	end start