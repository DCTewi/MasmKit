; eg0306.asm in Windows Console
	include io32.inc
	.data
tempc	word 26	;����һ�������¶�C
tempf	word ?	;���滪���¶�F

	.code
start:
	movsx eax,tempc	;16λ�з�����������չ��32λ��EAX=C
	imul eax,9	;EAX=C��9
	cdq	;EAX������չΪEDX��EAX����Ϊ������
	mov ebx,5
	idiv ebx	;EAX=C��9/5��û�п���������
	add eax,32	;EAX=F=C��9/5+32
	mov tempf,ax	;ȡ16λ�������16λ�Ƿ���λ��û����ֵ���壩

	exit 0
	end start