; eg0406a.asm in Windows Console
	include io32.inc
	.data
no_msg	byte 'Not Ready!',0
yes_msg	byte 'Ready to Go!',0

	.code
start:
	mov eax,58h	;����һ������
	test eax,02h	;����D1λ��ʹ��D1��1������λΪ0�����ݣ�
	jnz yesm	;D1��1����������ת��
	mov eax,offset no_msg	;D1��0����ʾû��׼����
	jmp done	;��ת����һ����֧�壡
yesm:	mov eax,offset yes_msg	;��ʾ׼����
done:	call dispmsg

	exit 0
	end start