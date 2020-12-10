;eg0202.asm
	include io32.inc
	.data
minint	= 10
bvar1	byte 0,128,255,-128,0,+127
bvar2	byte 1,-1,38,-38,38h,-38h
bvar3	byte ?
bvar4	byte 5 dup ('$')
bvar5	byte minint dup(0),minint dup(minint,?)
	byte 2 dup(2,3,2 dup(4))
	.code
start:
	exit 0
	end start
