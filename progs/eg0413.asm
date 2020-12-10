; eg0413.asm in Windows Console
	include io32.inc
	.data
msg1	byte 'Chapter 1: Fundamentals',0dh,0ah,0
msg2	byte 'Chapter 2: Data Representation',0dh,0ah,0
msg3	byte 'Chapter 3: Basic Instructions',0dh,0ah,0
msg4	byte 'Chapter 4: Program Structure',0dh,0ah,0
msg5	byte 'Chapter 5: Procedure Progamming',0dh,0ah,0
msg6	byte 'Chapter 6: Windows Programming',0dh,0ah,0
msg7	byte 'Chapter 7: Mixed Programming',0dh,0ah,0
msg8	byte 'Chapter 8: I/O Programming',0dh,0ah,0
msg9	byte 'Chapter 9: FP/SIMD/64-bit Instructions',0dh,0ah,0
msg10	byte 'Chapter 10: Other Topics',0dh,0ah,0	;10����Ϣ
msg     byte 'Input number(1~10):',0dh,0ah,0	;��ʾ�����ַ���
table	dword disp1,disp2,disp3,disp4,disp5,disp6,disp7,disp8,disp9,disp10	;��ַ��

	.code
start:
again:	mov eax,offset msg
	call dispmsg	;��ʾ����
	call readuid	;�������룺EAX=����
	cmp eax,1	;�жϷ�Χ
	jb again
	cmp eax,10
	ja again	;���ڷ�Χ�ڣ���������
	dec eax	;EAX=EAX-1
	shl eax,2	;EAX=EAX��4
	jmp table[eax]	;���֧��ת
disp1:	mov eax,offset msg1
	jmp disp
disp2:	mov eax,offset msg2
	jmp disp
disp3:	mov eax,offset msg3
	jmp disp
disp4:	mov eax,offset msg4
	jmp disp
disp5:	mov eax,offset msg5
	jmp disp
disp6:	mov eax,offset msg6
	jmp disp
disp7:	mov eax,offset msg7
	jmp disp
disp8:	mov eax,offset msg8
	jmp disp
disp9:	mov eax,offset msg9
	jmp disp
disp10:	mov eax,offset msg10
disp:	call dispmsg	; ��ʾ

	exit 0
	end start