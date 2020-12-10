; eg0607d.asm in Windows Console
	include io32.inc
	.data
	.code
start:
	call readsid
	.IF sdword ptr eax < 0
	    neg eax	;Âú×ã£¬Çó²¹
	.ENDIF
	call dispuid

	exit 0
	end start