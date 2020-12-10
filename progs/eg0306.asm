; eg0306.asm in Windows Console
	include io32.inc
	.data
tempc	word 26	;假设一个摄氏温度C
tempf	word ?	;保存华氏温度F

	.code
start:
	movsx eax,tempc	;16位有符号数符号扩展成32位：EAX=C
	imul eax,9	;EAX=C×9
	cdq	;EAX符号扩展为EDX和EAX，作为被除数
	mov ebx,5
	idiv ebx	;EAX=C×9/5（没有考虑余数）
	add eax,32	;EAX=F=C×9/5+32
	mov tempf,ax	;取16位结果（高16位是符号位，没有数值意义）

	exit 0
	end start