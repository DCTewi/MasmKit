;eg0904a.asm for DOS
	include io16.inc
	.data
f32d	real4 100.25,0.2	; �����ȸ�����
f64d	real8 -0.2109375	; ˫���ȸ�����
f80d	real10 100.25e9	; ��չ���ȸ�����
varf	real4 ?,?
i32d	dword 3e4ccccdh	; 0.2�ı��루�μ�����9-3��
	.code
start:	mov ax,@data
	mov ds,ax
	finit	; ��ʼ��FPU
	fld f32d	; ѹ�뵥���ȸ�����f32d
	fld f64d	; ѹ��˫���ȸ�����f64d
	fld f80d	; ѹ����չ���ȸ�����f80d
	fldpi	; ѹ��У�3.1415926����
	fst varf	; ��ջ�����ݦд��͵�����VARF
	fstp varf+4	; ��ջ�����ݦе���������VARF+4
	mov eax,dword ptr f32d+4	; ȡ0.2�������Ʊ��룩
	cmp eax,i32d	; �Ƚϱ����Ƿ���ͬ
	jz dispy
	mov al,'N'	; ����ͬ����ʾN
	jmp dispn
dispy: 	mov al,'Y'	; ��ͬ����ʾY
dispn: 	call dispc

	exit 0
	end start