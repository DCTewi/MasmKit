;eg0809.asm in DOS
	include io16.inc
	.data
msg	byte 0dh,0ah,'No divide overflow !',0
	.code
start:
	mov ax,@data
	mov ds,ax
	call readuiw
	mov bl,1
	div bl
	mov eax,offset msg
	call dispmsg
	exit 0
	end start
