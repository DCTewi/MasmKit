; eg0307.asm in Windows Console
	include io32.inc
	.data
varA	dword 11001010000111100101010101001101b
varB	dword 00110111010110100011010111100001b
varT1	dword ?
varT2	dword ?

	.code
start:
	mov eax,varA	;EAX��11001010000111100101010101001101B
	not eax	;EAX��00110101111000011010101010110010B
	and eax,varB	;EAX��00110101010000000010000010100000B
	mov ebx,varB	;EBX��00110111010110100011010111100001B
	not ebx	;EBX��11001000101001011100101000011110B
	and ebx,varA	;EBX��11001000000001000100000000001100B
	or eax,ebx	;EAX��11111101010001000110000010101100B
	mov varT1,eax
	;
	mov eax,varA
	xor eax,varB	;EAX��11111101010001000110000010101100B
	mov varT2,eax
	;
	mov eax,varT1	;��������ʽ��ʾVART1
	call dispbd
	call dispcrlf	;������ʾ
	mov eax,varT2	;��������ʽ��ʾVART2
	call dispbd

	exit 0
	end start