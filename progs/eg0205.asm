;eg0205.asm
	include io32.inc
	.data
	org 100h
bvar1	byte 100
	align 2
wvar2	word 100
	align 4
dvar3	dword ?
	align 4
dvar4	dword ?
	.code
start:

	exit 0
	end start
