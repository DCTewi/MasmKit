; eg0420.asm in Windows Console
	include io32.inc
	.data
string	byte 'Let us have a try !',0dh,0ah,0	; ��0��β���ַ���

	.code
start:
	mov eax,offset string	; ��ʾ����ǰ���ַ���
	call dispmsg
	mov esi,offset string
outlp:	cmp byte ptr [esi],0	; ��ѭ�������жϺ�ѭ��
	jz done	; Ϊ0����
again:	cmp byte ptr [esi],' '	; ����Ƿ��ǿո�
	jnz next	; ���ǿո����ѭ��
	mov edi,esi	; �ǿո񣬽����޳��ո��֧
inlp:	inc edi	; �÷�֧��ѭ������
	mov al,[edi]	; ǰ��һ��λ��
	mov [edi-1],al
	cmp byte ptr [edi],0	; ��ѭ������ѭ�����ж�
	jnz inlp	; ��ѭ��������
	jmp again	; �ٴ��ж��Ƿ�Ϊ�ո񣨴��������ո������
next:	inc esi	; �����Ժ����ַ������жϴ���
	jmp outlp	; ��ѭ��������
done:	mov eax,offset string	; ��ʾ�������ַ���
	call dispmsg

	exit 0
	end start