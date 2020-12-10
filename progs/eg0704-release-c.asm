	TITLE	D:\MASM\eg0704\eg0704.cpp
	.386P
include listing.inc
if @Version gt 510
.model FLAT
else
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
_BSS	SEGMENT DWORD USE32 PUBLIC 'BSS'
_BSS	ENDS
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
;	COMDAT ??_C@_0O@BFPJ@The?5mean?5is?5?7?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ?lock@ios@@QAAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?unlock@ios@@QAAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?unlockbuf@ios@@QAAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?gptr@streambuf@@IBEPADXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setf@ios@@QAEJJJ@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?rdbuf@ios@@QBEPAVstreambuf@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??4istream@@IAEAAV0@ABV0@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??6ostream@@QAEAAV0@D@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?endl@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??4iostream@@IAEAAV0@PAVstreambuf@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _main
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _mean
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?flush@@YAAAVostream@@AAV1@@Z			; flush
PUBLIC	_mean
PUBLIC	_main
PUBLIC	??_C@_0O@BFPJ@The?5mean?5is?5?7?$AA@		; `string'
PUBLIC	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z		; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@J@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@E@Z:NEAR			; ostream::operator<<
;	COMDAT ??_C@_0O@BFPJ@The?5mean?5is?5?7?$AA@
; File C:\Program Files\Microsoft Visual Studio\VC98\INCLUDE\ostream.h
_DATA	SEGMENT
??_C@_0O@BFPJ@The?5mean?5is?5?7?$AA@ DB 'The mean is ', 09H, 00H ; `string'
_DATA	ENDS
;	COMDAT _main
_TEXT	SEGMENT
_array$ = -40
_main	PROC NEAR					; COMDAT

; 5    : {

	sub	esp, 40					; 00000028H

; 6    :   long array[COUNT] = {675, 354, -34, 198, 267, 0, 9, 2371, -67, 4257};
; 7    :   cout<<"The mean is \t"<<mean(array,COUNT)<<endl;

	lea	eax, DWORD PTR _array$[esp+40]
	push	10					; 0000000aH
	push	eax
	mov	DWORD PTR _array$[esp+48], 675		; 000002a3H
	mov	DWORD PTR _array$[esp+52], 354		; 00000162H
	mov	DWORD PTR _array$[esp+56], -34		; ffffffdeH
	mov	DWORD PTR _array$[esp+60], 198		; 000000c6H
	mov	DWORD PTR _array$[esp+64], 267		; 0000010bH
	mov	DWORD PTR _array$[esp+68], 0
	mov	DWORD PTR _array$[esp+72], 9
	mov	DWORD PTR _array$[esp+76], 2371		; 00000943H
	mov	DWORD PTR _array$[esp+80], -67		; ffffffbdH
	mov	DWORD PTR _array$[esp+84], 4257		; 000010a1H
	call	_mean
	add	esp, 8
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	push	eax
	push	OFFSET FLAT:??_C@_0O@BFPJ@The?5mean?5is?5?7?$AA@ ; `string'
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@J@Z			; ostream::operator<<
	push	OFFSET FLAT:?flush@@YAAAVostream@@AAV1@@Z ; flush
	push	10					; 0000000aH
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 8    :   return 0;

	xor	eax, eax

; 9    : }

	add	esp, 40					; 00000028H
	ret	0
_main	ENDP
_TEXT	ENDS
;	COMDAT _mean
_TEXT	SEGMENT
_d$ = 8
_num$ = 12
_mean	PROC NEAR					; COMDAT

; 11   : {

	push	esi

; 12   :   long i,temp=0;
; 13   :   for(i=0;i<num;i++) temp=temp+d[i];

	mov	esi, DWORD PTR _num$[esp]
	xor	eax, eax
	test	esi, esi
	jle	SHORT $L1300
	mov	ecx, DWORD PTR _d$[esp]
	push	edi
	mov	edx, esi
$L1298:
	mov	edi, DWORD PTR [ecx]
	add	ecx, 4
	add	eax, edi
	dec	edx
	jne	SHORT $L1298
	pop	edi
$L1300:

; 14   :   temp=temp/num;

	cdq
	idiv	esi
	pop	esi

; 15   :   return(temp);
; 16   : }

	ret	0
_mean	ENDP
_TEXT	ENDS
;	COMDAT ??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z
_TEXT	SEGMENT
__f$ = 8
??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z PROC NEAR		; ostream::operator<<, COMDAT

; 112  : inline ostream& ostream::operator<<(ostream& (__cdecl * _f)(ostream&)) { (*_f)(*this); return *this; }

	push	esi
	mov	esi, ecx
	push	esi
	call	DWORD PTR __f$[esp+4]
	add	esp, 4
	mov	eax, esi
	pop	esi
	ret	4
??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z ENDP		; ostream::operator<<
_TEXT	ENDS
EXTRN	?flush@ostream@@QAEAAV1@XZ:NEAR			; ostream::flush
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT
__outs$ = 8
?flush@@YAAAVostream@@AAV1@@Z PROC NEAR			; flush, COMDAT

; 143  : inline _CRTIMP ostream& __cdecl flush(ostream& _outs) { return _outs.flush(); }

	mov	ecx, DWORD PTR __outs$[esp-4]
	jmp	?flush@ostream@@QAEAAV1@XZ		; ostream::flush
?flush@@YAAAVostream@@AAV1@@Z ENDP			; flush
_TEXT	ENDS
END
