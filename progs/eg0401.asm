; eg0401.asm in Windows Console
	include io32.inc
	.data
num	dword 3456	;����һ��Nֵ��С��2^32-1��
sum	qword ?

	.code
start:
	mov eax,num	;EAX=N
	add eax,1	;EAX=N+1
	imul num	;EDX.EAX=(1+N)��N
	shr edx,1	;64λ�߼�����һλ���൱�ڳ���2
	rcr eax,1	;EDX.EAX= EDX.EAX��2
	mov dword ptr sum,eax
	mov dword ptr sum+4,edx	;��С�˷�ʽ����

	exit 0
	end start