;�ļ�����eg0508.asm����5-8������
	include io32.inc	;Դ�ļ�������32λ�������˵���ļ�
	include eg0508.inc	;Դ�ļ����������ݶ��ļ�
	.code	;����Σ�������
start:
    mov temp,offset dvar
	call dphd	;ʮ�������������ʾ����DVAR��ַ�Ա�����
	call dispcrlf
	
	mov eax,offset inmsg
	call dispmsg
	call rdhd	;����洢����ַ���������EAX
	call dispcrlf
	mov ebx,[eax]	;EBX=�洢������
	mov eax,offset outmsg1
	call dispmsg 
	mov temp,ebx	;����������ݲ���
	call dphd	;ʮ���������
	call dispcrlf
	mov eax,offset outmsg2
	call dispmsg
	mov eax,ebx	;�Ĵ������ݲ���
	call write	;ʮ�������
	exit 0	;������������˳�
	include eg0508s.asm	;Դ�ļ��������ӳ����ļ�
	end start
