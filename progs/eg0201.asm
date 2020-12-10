;eg0201.asm
	include io32.inc
	.data
const1	byte 100,100d,01100100b,64h, 'd'
const2	byte 1,+127,128,-128,255,-1
const3	byte 105,-105,32,-32,32h,-32h
const4	byte '0123456789', 'abcxyz', 'ABCXYZ'
crlf	byte 0dh,0ah,0
minint	= 10 
maxint	equ 0ffh
const5	byte minint,minint+5,maxint-5,maxint-minint
const6	byte 4*4,34h+34,67h-52h,52h-67h
	.code
start:
	mov eax,offset const4
	call dispmsg

	exit 0
	end start