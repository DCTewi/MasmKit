; eg0509.asm in Windows Console
	include io32.inc
	;�궨��
rfbit	macro bit1,bit2
	xor ebx,ebx	;EBX��0�����ڱ����ַ�
	rol  eax,bit1	;��ĳ����־����BIT1λ�����뵱ǰCF
	adc ebx,30h	;ת��ΪASCII�ַ�
	mov rfmsg+bit2,bl	;�������ַ���BIT2λ��
	endm

	.data
rfmsg	byte 'OF=0, SF=0, ZF=0, AF=0, PF=0, CF=0',13,10,0
	.code
start:
	mov eax,50
	sub eax,80	;����һ������
	pushfd
	pop eax	;����־λ�Ĵ��������ݴ���EAX

	rfbit 21,3	;��ʾOF��ԭ����OF������21λ�����뵱ǰCF��
	rfbit 4,9	;��ʾSF��ԭ����SF������4λ�����뵱ǰCF��
	rfbit 1,15	;��ʾZF��ԭ����ZF������1λ�����뵱ǰCF��
	rfbit 2,21	;��ʾAF��ԭ����AF������2λ�����뵱ǰCF��
	rfbit 2,27	;��ʾPF��ԭ����PF������2λ�����뵱ǰCF��
	rfbit 2,33	;��ʾCF��ԭ����CF������2λ�����뵱ǰCF��
	mov eax,offset rfmsg
	call dispmsg
	exit 0
	end start