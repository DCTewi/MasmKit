;eg0203.asm
	include io32.inc
	.data
minint	= 10
wvar1	word 0,32768,65535,-32768,0,+32767
wvar2	word 1,-1,38,-38,38h,-38h
wvar3	word ?
wvar4	word 2010h,1020h
	word 5 dup(minint,?)
wvar6	word 3139h,3832h
bvar6	byte 39h,31h,32h,38h
	byte 0
	.code
start:
	mov eax,offset wvar6
	call dispmsg
	exit 0
	end start

