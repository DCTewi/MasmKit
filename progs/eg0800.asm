; eg0800.asm in DOS
	include io16.inc
	.data
		; ���ݶ���
	.code
start:
    mov ax,@data
    mov ds,ax
		; ������
	exit 0
		; �ӳ���
	end start