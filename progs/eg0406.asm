; eg0406.asm in Windows Console
	include io32.inc
	.data
no_msg	byte 'Not Ready!',0
yes_msg	byte 'Ready to Go!',0

	.code
start:
	mov eax,56h	;����һ������
	test eax,02h	;����D1λ��ʹ��D1��1������λΪ0�����ݣ�
	jz nom	;D1��0����������ת��
	mov eax,offset yes_msg	;D1��1����ʾ׼����
	jmp done	;��ת����һ����֧�壡
nom:	mov eax,offset no_msg	;��ʾû��׼����
done:	call dispmsg

	exit 0
	end start