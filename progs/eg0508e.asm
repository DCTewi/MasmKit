;eg0508e.asm
	include io32.inc	;Դ�ļ�������32λ�������˵���ļ�
	.data	;���ݶ�
dvar	dword 1234abcdh	
inmsg	byte 'Enter Memory Address:  ',0
outmsg1	byte 'Memory Data In HexDecimal:  ',0
outmsg2	byte 'Memory Data In Signed Decimal:  ',0
temp	dword ?	;�������
    extern rdhd:near,dphd:near,write:near
    public temp
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
	end start
