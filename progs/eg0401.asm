; eg0401.asm in Windows Console
	include io32.inc
	.data
num	dword 3456	;假设一个N值（小于2^32-1）
sum	qword ?

	.code
start:
	mov eax,num	;EAX=N
	add eax,1	;EAX=N+1
	imul num	;EDX.EAX=(1+N)×N
	shr edx,1	;64位逻辑右移一位，相当于除以2
	rcr eax,1	;EDX.EAX= EDX.EAX÷2
	mov dword ptr sum,eax
	mov dword ptr sum+4,edx	;按小端方式保存

	exit 0
	end start