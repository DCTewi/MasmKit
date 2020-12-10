;eg0810.asm in DOS
	include io16.inc
	.data
msg	byte 0dh,0ah,'No overflow !',0
	.code
start:
	mov ax,@data
	mov ds,ax
	call readuib
	add al,100
	jno noflow
	into
	jmp done
noflow:	mov eax,offset msg
	call dispmsg
done:	exit 0
	end start
