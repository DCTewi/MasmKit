;eg0807.asm in DOS
	include io16.inc
	.code
start:
	mov al,9	;AL��9��׼����9�ŵ�Ԫ��ȡ������ݣ�
	out 70h,al	;��70H��I/O��ַ�����ѡ��CMOS RAM��9�ŵ�Ԫ
	in al,71h	;��71H��I/O��ַ���룬��ȡ9�ŵ�Ԫ�����ݣ�������AL
	call disphb	;��ʾAL���ݣ������
	mov al,'-'	;��ʾ�ָ���������
	call dispc

	mov al,8	;AL��8����8�ŵ�Ԫ��ȡ�·����ݣ�
	out 70h,al
	in al,71h
	call disphb	;��ʾ�·�
	mov al,'-'	;��ʾ�ָ���������
	call dispc

	mov al,7	;AL��7����7�ŵ�Ԫ��ȡ�������ݣ�
	out 70h,al
	in al,71h
	call disphb	;��ʾ����
	exit 0
	end start
